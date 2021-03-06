/* Autogenerated with kurento-module-creator */

#include <gst/gst.h>
#include "MediaPipeline.hpp"
#include <PulseReaderImplFactory.hpp>
#include "PulseReaderImpl.hpp"
#include <jsonrpc/JsonSerializer.hpp>
#include <KurentoException.hpp>
#include "MediaPipelineImpl.hpp"
#include "SignalHandler.hpp"

#define GST_CAT_DEFAULT kurento_pulse_reader_impl
GST_DEBUG_CATEGORY_STATIC (GST_CAT_DEFAULT);
#define GST_DEFAULT_NAME "KurentoPulseReaderImpl"

namespace kurento
{
namespace module
{
namespace pulsereader
{

void PulseReaderImpl::busMessage (GstMessage *message) 
{
  GST_DEBUG("busmessage");
  dataUpdate(1, pulse, "");
}

void PulseReaderImpl::dataUpdate (int id, double bpm, std::string data)
{
	GST_DEBUG("dataUpdate event");
	try {
		FrameData event(shared_from_this(), FrameData::getName(), id, bpm, data);
		signalFrameData(event);	
	} catch (std::bad_weak_ptr &e) {
		GST_WARNING ("bad event ptr");
	}
}

void PulseReaderImpl::postConstructor ()
{
	GST_DEBUG ("postConstructor");
	GstBus *bus;
	std::shared_ptr<MediaPipelineImpl> pipe;

	GST_DEBUG("1");
	FilterImpl::postConstructor();

	GST_DEBUG("2");
	pipe = std::dynamic_pointer_cast<MediaPipelineImpl>(getMediaPipeline());

	GST_DEBUG("3");
	bus = gst_pipeline_get_bus(GST_PIPELINE(pipe->getPipeline()));

	GST_DEBUG("4");
	bus_handler_id = register_signal_handler (G_OBJECT(bus),
									 "message",
									 std::function <void (GstElement *, GstMessage *)>
									 (std::bind(&PulseReaderImpl::busMessage, this,
									 					  std::placeholders::_2)),
									 std::dynamic_pointer_cast<PulseReaderImpl>
									 (shared_from_this()));
	GST_DEBUG("5");
	g_object_unref(bus);
}

PulseReaderImpl::PulseReaderImpl (const boost::property_tree::ptree &config, std::shared_ptr<MediaPipeline> mediaPipeline, int id, bool overlay) : OpenCVFilterImpl (config, std::dynamic_pointer_cast<MediaPipelineImpl> (mediaPipeline) )
{
	GST_DEBUG("constructor");
	g_object_set(element, "filter-factory", "pulsereader", NULL);
	g_object_get(G_OBJECT(element), "filter", &pulsereader, NULL);

	if (pulsereader == NULL) {
		throw KurentoException(MEDIA_OBJECT_NOT_FOUND, "MediaObject not found");
	}

	g_object_set(G_OBJECT(pulsereader), "qos", FALSE, NULL);

	bus_handler_id = 0;

	g_object_unref(pulsereader);

	PulseReaderOpenCVImpl::pulse = &pulse;
	PulseReaderOpenCVImpl::existsPulse = &existsPulse;
	PulseReaderOpenCVImpl::id = &id;
	PulseReaderOpenCVImpl::data = &data;
	PulseReaderImpl::setOverlay(overlay);
	PulseReaderImpl::setId(id);
}

void PulseReaderImpl::setOverlay (bool overlaySet)
{
  GST_DEBUG("6");
  PulseReaderOpenCVImpl::setOverlay (overlaySet);
}

void PulseReaderImpl::setId (int id)
{
  GST_DEBUG("7");
  PulseReaderOpenCVImpl::setId (id);
}

MediaObjectImpl *
PulseReaderImplFactory::createObject (const boost::property_tree::ptree &config, std::shared_ptr<MediaPipeline> mediaPipeline, int id, bool overlay) const
{
  return new PulseReaderImpl (config, mediaPipeline, id, overlay);
}

PulseReaderImpl::~PulseReaderImpl ()
{
	std::shared_ptr<MediaPipelineImpl> pipe;
	if (bus_handler_id > 0) {
		pipe = std::dynamic_pointer_cast<MediaPipelineImpl> (getMediaPipeline());
		GstBus *bus = gst_pipeline_get_bus(GST_PIPELINE(pipe->getPipeline()));
		unregister_signal_handler(bus, bus_handler_id);
		g_object_unref(bus);
	}
}

PulseReaderImpl::StaticConstructor PulseReaderImpl::staticConstructor;

PulseReaderImpl::StaticConstructor::StaticConstructor()
{
  GST_DEBUG_CATEGORY_INIT (GST_CAT_DEFAULT, GST_DEFAULT_NAME, 0,
                           GST_DEFAULT_NAME);
}

} /* pulsereader */
} /* module */
} /* kurento */

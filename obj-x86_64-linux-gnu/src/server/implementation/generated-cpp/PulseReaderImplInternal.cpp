/* Autogenerated with kurento-module-creator */

#include <gst/gst.h>
#include "MediaPipeline.hpp"
#include "PulseReaderImpl.hpp"
#include "PulseReaderImplFactory.hpp"
#include "PulseReaderInternal.hpp"
#include <jsonrpc/JsonSerializer.hpp>
#include <KurentoException.hpp>

using kurento::KurentoException;

namespace kurento
{
namespace module
{
namespace pulsereader
{

MediaObjectImpl *PulseReaderImplFactory::createObjectPointer (const boost::property_tree::ptree &conf, const Json::Value &params) const
{
  kurento::JsonSerializer s (false);
  PulseReaderConstructor constructor;

  s.JsonValue = params;
  constructor.Serialize (s);

  return createObject (conf, constructor.getMediaPipeline(), constructor.getId(), constructor.getOverlay() );
}

void
PulseReaderImpl::invoke (std::shared_ptr<MediaObjectImpl> obj, const std::string &methodName, const Json::Value &params, Json::Value &response)
{
  if (methodName == "setOverlay") {
    kurento::JsonSerializer s (false);
    PulseReaderMethodSetOverlay method;

    s.JsonValue = params;
    method.Serialize (s);

    method.invoke (std::dynamic_pointer_cast<PulseReader> (obj) );
    return;
  }

  if (methodName == "setId") {
    kurento::JsonSerializer s (false);
    PulseReaderMethodSetId method;

    s.JsonValue = params;
    method.Serialize (s);

    method.invoke (std::dynamic_pointer_cast<PulseReader> (obj) );
    return;
  }

  OpenCVFilterImpl::invoke (obj, methodName, params, response);
}

bool
PulseReaderImpl::connect (const std::string &eventType, std::shared_ptr<EventHandler> handler)
{

  if ("PulseDetected" == eventType) {
    std::weak_ptr<EventHandler> wh = handler;

    sigc::connection conn = signalPulseDetected.connect ([ &, wh] (PulseDetected event) {
      std::shared_ptr<EventHandler> lh = wh.lock();
      if (!lh)
        return;

      std::shared_ptr<PulseDetected> ev_ref (new PulseDetected(event));
      auto object = this->shared_from_this();

      lh->sendEventAsync ([ev_ref, object, lh] {
        JsonSerializer s (true);

        s.Serialize ("data", ev_ref.get());
        s.Serialize ("object", object.get());
        s.JsonValue["type"] = "PulseDetected";

        lh->sendEvent (s.JsonValue);
      });
    });
    handler->setConnection (conn);
    return true;
  }

  if ("PulseUndetected" == eventType) {
    std::weak_ptr<EventHandler> wh = handler;

    sigc::connection conn = signalPulseUndetected.connect ([ &, wh] (PulseUndetected event) {
      std::shared_ptr<EventHandler> lh = wh.lock();
      if (!lh)
        return;

      std::shared_ptr<PulseUndetected> ev_ref (new PulseUndetected(event));
      auto object = this->shared_from_this();

      lh->sendEventAsync ([ev_ref, object, lh] {
        JsonSerializer s (true);

        s.Serialize ("data", ev_ref.get());
        s.Serialize ("object", object.get());
        s.JsonValue["type"] = "PulseUndetected";

        lh->sendEvent (s.JsonValue);
      });
    });
    handler->setConnection (conn);
    return true;
  }

  if ("FrameData" == eventType) {
    std::weak_ptr<EventHandler> wh = handler;

    sigc::connection conn = signalFrameData.connect ([ &, wh] (FrameData event) {
      std::shared_ptr<EventHandler> lh = wh.lock();
      if (!lh)
        return;

      std::shared_ptr<FrameData> ev_ref (new FrameData(event));
      auto object = this->shared_from_this();

      lh->sendEventAsync ([ev_ref, object, lh] {
        JsonSerializer s (true);

        s.Serialize ("data", ev_ref.get());
        s.Serialize ("object", object.get());
        s.JsonValue["type"] = "FrameData";

        lh->sendEvent (s.JsonValue);
      });
    });
    handler->setConnection (conn);
    return true;
  }

  return OpenCVFilterImpl::connect (eventType, handler);
}

void
PulseReaderImpl::Serialize (JsonSerializer &serializer)
{
  if (serializer.IsWriter) {
    try {
      Json::Value v (getId() );

      serializer.JsonValue = v;
    } catch (std::bad_cast &e) {
    }
  } else {
    throw KurentoException (MARSHALL_ERROR,
                            "'PulseReaderImpl' cannot be deserialized as an object");
  }
}
} /* pulsereader */
} /* module */
} /* kurento */

namespace kurento
{

void
Serialize (std::shared_ptr<kurento::module::pulsereader::PulseReaderImpl> &object, JsonSerializer &serializer)
{
  if (serializer.IsWriter) {
    if (object) {
      object->Serialize (serializer);
    }
  } else {
    std::shared_ptr<kurento::MediaObjectImpl> aux;
    aux = kurento::module::pulsereader::PulseReaderImplFactory::getObject (JsonFixes::getString(serializer.JsonValue) );
    object = std::dynamic_pointer_cast<kurento::module::pulsereader::PulseReaderImpl> (aux);
  }
}

void
Serialize (std::shared_ptr<kurento::module::pulsereader::PulseReader> &object, JsonSerializer &serializer)
{
  std::shared_ptr<kurento::module::pulsereader::PulseReaderImpl> aux = std::dynamic_pointer_cast<kurento::module::pulsereader::PulseReaderImpl> (object);

  Serialize (aux, serializer);
  object = std::dynamic_pointer_cast <kurento::module::pulsereader::PulseReader> (aux);
}

} /* kurento */
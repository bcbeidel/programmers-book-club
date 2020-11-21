const endpoint = 'https://make.cohesionapps.com/v1/t';

/**
 * Generate an event UUID
 */
function uuidv4() {
	return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
		var r = (Math.random() * 16) | 0,
			v = c == 'x' ? r : (r & 0x3) | 0x8;
		return v.toString(16);
	});
}

/**
 * Get Make Event Name
 * @param  {SegmentTrackEvent.event} event_name
 */
function getEventNameForMake(event_name){

  if (event_name == "Audience Entered"){
    return "core.AudienceFitted.v1";
  } 
  
  if (event_name == "Audience Exited") {
    return "core.AudienceUnfitted.v1";
  } 
  
  throw new EventNotSupported(`${event_name} is not supported.` +  
                              `Only 'Audience Entered' and 'Audience Exited' are supported`)
}

/**
 * Handle track event
 * @param  {SegmentTrackEvent} event
 * @param  {FunctionSettings} settings
 */
function get_anonymous_id_from_personas_endpoint(event, settings){
  
}

/**
 * Handle track event
 * @param  {SegmentTrackEvent} event
 * @param  {FunctionSettings} settings
 */
async function onTrack(event, settings) {
  // Learn more at https://segment.com/docs/connections/spec/track/
	const url = new URL(endpoint);

  let event_name = getEventNameForMake(event.event);
  let anonymous_id = getAnonymousIdFromPersonasEndpoint(event, settings);

  let request = {
		messageId: event.messageId,
		event: event_name,
    sentAt: event.sentAt,
    anonymousId: anonymous_id,
    audienceName: event.properties.audience_key,
    audienceUid: event.properties.audience_key,
    externalProperties: {
      spaceId: event.context.personas.space_id
    },
		anonymousId: anonymous_id,
	};

  const response = await fetch(url.toString(), {
		body: JSON.stringify(request),
		headers: new Headers({
			Authorization: 'Basic ' + btoa(`${settings.apiKey}:`),
			'Content-Type': 'application/json'
		}),
		method: 'post'
	});


	return await response;
}

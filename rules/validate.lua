priority: 1
input_parameter: "request"

log.trace(require("third-party.inspect")(request))
if request.path_segments[1] == "validate_documents"
then
    events["validate_documents"]:trigger(request)
end

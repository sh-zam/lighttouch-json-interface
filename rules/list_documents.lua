priority: 2
if request.method == "GET"
and #request.path_segments == 1
and request.path_segments[1]:match("^%a+$") -- TODO: make it a known type, not just any word
and request.headers["accept"]:match("json")
then
    events["list_documents_json"]:trigger(request)
end

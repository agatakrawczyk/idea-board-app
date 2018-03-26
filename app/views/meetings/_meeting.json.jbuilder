<div class="jumbotron">
  <div class="container">

    <h2 class="display-2"> Event: </h2>

json.extract! meeting, :id, :name, :start_time, :end_time, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)

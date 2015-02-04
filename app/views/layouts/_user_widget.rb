<% if user_signed_in? %>

<p>Welcome <%= current_user.email %></p>
<%= link_to 'Logged In [click to logout]', destroy_user_session_path, :method => :delete %>

<% else %>
<div class="row" align="center">
  <div class="col-md-6 col-md-offset-8">

      <p>You are not signed in.</p>
  	  <%= link_to 'login', new_user_session_path %>
  </div>
</div>

<% end %>
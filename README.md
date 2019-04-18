# Description
This toy application consumes the invitee_created webhook from Calendly and displays the list of created meetings.

The list of meetings is displayed here: [http://localhost:3000/meetings](http://localhost:3000/meetings).

The application is set to accept webhook posts on `/calendly/invitee_created`.

# Development
Run ultrahook:
```
ultrahook calendly-invitee-created http://localhost:3000/calendly/invitee_created
```

# Meeting Snippet
Create meetings using this link:
```
https://calendly.com/kurttomlinson/15min
```

# Updating Credentials with VS Code
```
EDITOR='code --wait' rails credentials:edit
```

# Creating Webhook Subscriptions
```
curl \
--header "X-TOKEN: <your_token>" \
--data "url=http://calendly-invitee-created.kurttomlinson.ultrahook.com" \
--data "events[]=invitee.created" \
https://calendly.com/api/v1/hooks
```

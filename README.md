# Development
Run ultrahook:
```
ultrahook calendly-invitee-created http://localhost:3000/calendly/invitee_created
ultrahook calendly-invitee-canceled http://localhost:3000/calendly/invitee_canceled
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
```
curl \
--header "X-TOKEN: <your_token>" \
--data "url=http://calendly-invitee-canceled.kurttomlinson.ultrahook.com" \
--data "events[]=invitee.canceled" \
https://calendly.com/api/v1/hooks
```

# Meeting Snippet
```
https://calendly.com/kurttomlinson/15min
```

# UserProfile

Overview of `UserProfile` module

## Register

[API Spec](https://hackmd.io/WxhgTz7oSyKbgEYcpkUtKw#101-Register)

### Story #1 (Native sign up)

#### Narrative

```
User want to sign up with native account
Then start using App
```

#### Scenarios (Acceptance criteria)

```
reigster data
    `name`
    `e-mail`
    `password`
    `confirm password`

Give the user enter data
When fullfill all textfield
And password equal to confirm password
Then app display regist success and show home page

Give the user enter data
When missing any one
Then app should show warning under the textfield

Give the user enter data
When fullfill all textfield
But password note equal to confirm password
Then app should show warning under the textfield
```
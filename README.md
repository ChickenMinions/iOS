# ？？？

-   [General](#general)

-   [Account](#account)
    -   [Sign up](#sign-up)
    -   [log in](#log-in)

-   [Overview](#overview)
    -   [Load Calendar/Plan From Remote](#load-calendarplan-from-remote)
    -   [Load Calendar From Cache](#load-calendarplan-from-cache)
    -   [Load Calendar/Plan And No Connectivity No Cache](#load-calendarplan-and-no-connectivity-no-cache)

# General

- Both client and backend need validate the data (?)

    ```
    Show error message. (?)
    ```

-   No connectivity

    ```markdown
    Show no connectivity error message. (?)
    ```


# Account

## Sign up

### Story #1 (Native sign up)

#### Narrative

```
User want to sign up with native account
Then start using App
```

#### UseCase

```markdown
Call `/register` API with the following data
	nick name
	e-mail
	password
	confirm password
Get the `session_id` from the backend
Then trans to home page
```

<a name="google-signup">

### Story #2 (Google sign up)

#### Narrative

```markdown
User want to sign up with a `Google account`
Then start using App
```

#### UseCase

```markdown
Execute `Google login` with `Google SDK`
Get `Google token` from `Google SDK`
Call `/register` API with `Google token`
Get the `session_id` from the backend.
```

## Log in

### Story #1 (Native log in)

#### Narrative

```
User want to login with native account
Then start using App
```

#### UseCase

```markdown
Call `/login` API
Then get a `session_id` from the backend.
Then trans to home page
```

### Story#2 (Google log in)

```markdown
Same with `google sign up`
```



# Overview

## Load Calendar/Plan From Remote

>   Get all calendar and project, even no change (?)

#### Narrative

```
User open the app
Then want to watch the `calendars` list (show/hide same with the last log in)
And watch all `plans` this month if the calendar is visible
```

#### Use case 

```markdown
- Request all calendars
    Call `/canlecar` API
    Get calendar info from backend
    Validate the data
    Show calendar
    
- Request plans this month 
    Call `/plans` API
    Get plan info from backend
    Validate the data
    Show visible calendar's plans
```



### Load Calendar/Plan From Cache

#### Narrative

```markdown
If user offline
Show the latest saved calendar and project from cache
And show `no connectivity` message
```

#### UseCase

```markdown
- Request all calendars
    Load calendar from cache
    Then show all calendar
    
- Request plans this month 
    Load plans from cache
    Show visible calendar's plans
```



### Load Calendar/Plan And No Connectivity No Cache

#### Narrative

```markdown
If user offline, and device no cache
Show `no connectivity` message
```

#### UseCase

```markdown
Show empty calendar
Show `no connectivity` message
```



>   to be continue...

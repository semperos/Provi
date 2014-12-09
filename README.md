# Provi #

DSL for Selenium-WebDriver tests using JetBrains' Meta Programming System (MPS).

## Audience(s) ##

QA professionals tasked with automating web test suites, but who either lack the coding experience to put together a large, well-organized codebase themselves, or who simply do not want to learn the whole Selenium-WebDriver API. MPS provides extensive auto-suggestions that make writing the DSL surprisingly straightforward.

MPS allows extending languages. So the human-friendly DSL will be the default, but programmers can go into the settings and pull in other languages (with more programmer-focused constructs) to use in addition/instead.

## DSL Features ##

The Examples section below fuels this section.

### Concepts ###

 * BrowserSession
 * Browser -> Driver -> driver implementations (Firefox, Chrome, etc.)
 * Element

## Examples ##

Imagine the ideal language, and then build it.

### Start Browser Session ###

```
Browser Session *Login to Github* in Firefox
```

### Navigate ###

```
Go to "https://github.com"
```

For relative paths:

```
Starting with URL "https://github.com"
Go to "/login"
```

### Interactivity ###

CSS query:

```
Click ".header > button.login"
```

Grab an element and do multiple things.

```
Find "input.username" and
    Type "my_username_01" into it and
    Press Enter
```

### Variables ###

Elements can be held onto as variables, but we have to figure out how best to deal with Selenium-WebDriver's "stale element" concept, wherein references to elements become stale on page refresh.

```
The "input.username" is called the *username input field*

// OR

The *username input field* is at "input.username"
```

(Advanced) Support programmer-friendly (PF) variable declarations:

```
usernameInputField = Find "input.usename"
```

### Functions/Routines ###

Need reusability and extensibility, but make it simple.

No parameters/arguments:

```
To login do:
 * Go to "https://github.com"
 * Click ".header > button.login"
 * Find "input.username" and
      Type "my_username_01" into it and
      Press Enter
```

With one parameter:

```
For any table; to delete a row do:
 * Find "tr td.action" inside the table and
       Click the checkbox
 * Click "button.delete"
```

With multiple parameters:

```
For any input field and text; to submit the text do:
  * Type the text into the input field and
  * Press Enter
```

(Advanced) Support PF function declarations:

```
function <name> (param, param) {
    ...
}
```

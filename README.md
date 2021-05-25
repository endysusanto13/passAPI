# Password Authentication API

## Problem

With the server language of your choice, create an authentication API that does the following.

1. Takes a login and password
2. Checks against a list (either in a database, or saved in a text file) whether that login and password is valid
3. The passwords in the list cannot be readable for a person. Any form of basic encryption is acceptable
4. Before checking if the username is within the database, the API will check if the log in begins with the 2 letter country code of the login location. For example, if the login comes from Singapore, a user name like sggalvin will be acceptable,
5. A different response should be returned for a username that does not meet the 2 letter country code criteria.

## Installation

1. Install ruby (https://www.ruby-lang.org/en/documentation/installation/)

2. Install IPinfo gem (IPinfo is a third party API that can detect user's location based on the IP address)

```
gem install IPinfo
```

## Usage

### How to login

1. Type 'ruby app.rb' in the terminal at root directory.
2. Type in username.
3. Type in password.

### How to add new username and password

1. Open login(unsecure).txt to add the desired username and password. 
    - Please note that this file will not be executed by the code
    - This file is only for user's reference during testing as the password will be stored in hash.
2. Type 'ruby hash.rb' in the terminal at root directory.
3. Enter the desired password.
4. The program will return a hashed password.
    - E.g. "PassEndy-123" will be hashed to "d3363c7f282bb3b8f31027ff23f9974a99e028b16d2bd7a4adfe57edd20df908"
5. Open login.txt
    - Add username and password in this format "{username} || {hashed password}" in a new line.
    - E.g. "sgendy || d3363c7f282bb3b8f31027ff23f9974a99e028b16d2bd7a4adfe57edd20df908"

## Possible Improvement
- Store username and password in database instead of .txt file
- Add salt to hashing for greater security.
- Add a feature to check for duplicate of usernames
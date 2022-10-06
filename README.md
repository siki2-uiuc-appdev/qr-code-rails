# QR Code Rails

In this project, we'll generate QR codes for our users and display them in the browser.

## Target

[Here is a target](https://qr-code-rails.herokuapp.com/) to work towards.

## Anatomy of a URL

The full anatomy of a URL (**parameters** are also known as **query strings**):

![The anatomy of a URL from MDN](mdn-url-all.png)

[Read more at MDN.](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_URL)

## Tasks

Implement the following four URLs:

- `/text`

    This URL should accept a query string of the form:
    
    ```
    ?content=Your text goes here
    ```

    The value provided under `content` key of the query string should be encoded in a QR code as plain text.
- `/url`

    This URL should accept a query string of the form:
   
    ```
    ?page=https://www.wikipedia.org
    ```

    The value provided under the `page` key of the query string should be encoded in a QR code as a URL (which is just plain text that begins with `http` or `https`).
- `/wifi`

    This URL should accept a query string of the form:

    ```
    ?ssid=Your network name&pw=secret password
    ```
    The values provided under the `ssid` and `pw` keys should be encoded in a QR code as a wifi network. For example:

    ```
    WIFI:T:WPA;S:Your network name;P:secret password;;
    ```
- `/sms`

    This URL should accept a query string of the form:

    ```
    ?phone=9876543210&message=Hi Alice! It's me,
    ```

    The values provided under the `phone` and `message` keys should be encoded in a QR code as a text message: For example:

    ```
    SMSTO:9876543210:Hi Alice! It's me, 
    ```

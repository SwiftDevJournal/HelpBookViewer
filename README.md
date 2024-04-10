# Help Book Viewer

The Help Book Viewer app lets you view the contents of help books for Mac apps.

Why create this app when Apple has a Help Viewer app? The Help Viewer app requires you to register your help book in order to show it. The usual way to register the help book is to add it to your Xcode project and run the app. When you start making a help book, you may want to see how it looks without adding it to your project. The Help Viewer app lets you see how the help book looks without having to register it.

## Using the App

1. Click the Choose Book button in the toolbar.
2. Select your help book from the Open panel.
3. Click the Open button.

## Current Limitations

The Help Book Viewer app is in an early stage of development. It has the following limitations:

* The Open panel lets you choose any type of file. Make sure you choose a help book.
* CSS files must be in a `CSS` folder inside the help book's Resources folder.
* Image files must be in an `Images` folder inside the help book's Resources folder.
* The app assumes the home page file is `index.html`.
* The app does not currently support localized help books.
* There are no Back and Forward buttons.

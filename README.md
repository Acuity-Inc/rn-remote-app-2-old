
# rn-remote-app-2

React Native Mobile App template

## Getting Started

### Prerequisites

- macOS
- [Xcode with CLI tools](https://www.freecodecamp.org/news/install-xcode-command-line-tools/)
- [Node](https://treehouse.github.io/installation-guides/mac/node-mac.html)
- [Watchman](https://formulae.brew.sh/formula/watchman)



### How to contribute to Acuity Repos

- Please follow branch naming conventions described in [Development Best Practices](https://acuity-inc.atlassian.net/wiki/spaces/TCS1/pages/1993113601/Development+Best+Practices)
- Commit conventions as described in [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/#summary)

### Installing

```
npm install
npx pod-install
npm run ios
```

This will install dependencies and run the application in the iOS simulator.

If you want to simulate a different device/iOS than the default (for older versions of iPhone models), you can pass a flag:

```
npm run ios -- --simulator "iPhone 8"
```

See the [React Native CLI](https://github.com/react-native-community/cli/blob/master/docs/commands.md#--simulator-simulator_name) docs for more info.

## Running the Application

1. Run `npm run start` 
2. Open `ios/rnremoteapp2.xcworkspace` in Xcode
3. In the navbar, Xcode > Preferences > Accounts and add your Apple ID
4. In the left-hand file explorer, select the rnremoteapp2 project
5. Next to the run button, select the rnremoteapp2 build scheme and `<your device name>` for the scheme and run the application
6. Xcode should build the application and load it to your iPhone

## Testing the Application

Run unit tests:

```
npm test
```

Run code coverage and analyze project:

```
npm run coverage
```

## Application Features

### Backend Integration for CRUD Operations

## Development Design Practices
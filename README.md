# AppHomePage-MapKit-Listings
This repository contains the code for creating a mock HomePage a mobile application, inspired by the design and functionality of Airbnb. The HomePage features Apple Maps in the background, with listings displayed at the bottom, providing a seamless and intuitive user experience.

# Features
- **Mapkit Integration**: Apple Maps is utilized in the background to provide a seamless map view.
- **Hardcoded Listings**: Initial implementation includes hardcoded listing values displayed at the bottom of the map.
- **Dynamic Radius Adjustment**: Users can adjust the radius to shrink or expand the area displayed on the map.
- **Swipe Up View**: Swiping up on the view will cover the entire map, displaying only listings in the selected area.
- **Design Principles**: Emphasis on ensuring the design matches the Figma specifications 1:1 for a polished and professional look.

# Technologies Used
- **Swift**: The main programming language for iOS development.
- **Mapkit**: For integrating Apple Maps.
- **UIKit**: For building and managing the user interface.
- **Objective C**: For integrating legacy code and additional libraries.
- **Firebase**: For backend services including authentication, database, and analytics.
- **Coredata**: For local data storage and management.
- **Combine**: For handling asynchronous events.

## Setup

### Clone the repository:

git clone https://github.com/yourusername/AppHomePage-MapKit-Listings.git

### Navigate to the project directory:
cd AppHomePage-MapKit-Listings

### Install dependencies:
Ensure you have Xcode installed and up to date. Open the project in Xcode and install any necessary dependencies through CocoaPods if applicable.

### Configure Firebase:
- Go to the Firebase Console.
- Create a new project or use an existing one.
- Download the GoogleService-Info.plist file and add it to your Xcode project.
- Ensure the Firebase SDKs are integrated by following the Firebase setup instructions.

### Usage
- To run the project, open the .xcodeproj file in Xcode and build and run the project on a simulator or a physical device. Make sure you have configured Firebase and other necessary dependencies properly.

## Testing

### Strategy
- **Unit Tests**: Test each function for correct behavior, particularly focusing on accurate map integration, data parsing, and radius adjustments.
- **Integration Tests**: Ensure that the components work together seamlessly to produce the expected user experience.
- **UI Tests**: Verify the design matches the Figma specifications and the UI is responsive and interactive.
- **Error Handling Tests**: Verify that the application can handle potential errors gracefully, such as network issues or incorrect data inputs.

### Features Tested
- **Map Integration**: Confirms that the MapKit is correctly integrated and displaying as expected.
- **Data Parsing Accuracy**: Ensures that the parsing logic correctly extracts and displays listing information.
- **Filter Logic**: Verifies that the script correctly identifies and includes only the specified listings within the radius.

### Features Not Tested
- **Advanced User Interactions**: Testing the full spectrum of user interactions and edge cases in the swipe-up view.

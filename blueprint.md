# Blueprint

## Overview

This is a travel application that allows users to explore destinations, find travel packages, and book their next adventure. The application is designed to be visually appealing and user-friendly, with a focus on providing a seamless and enjoyable experience for travelers.

## Style, Design, and Features

### Style

- **Typography:** The application uses the `GoogleFonts` package to provide a clean and modern typography. The primary font is `Lato`.
- **Color Scheme:** The application uses a custom color scheme with a primary color of `Colors.deepPurple`.
- **Theming:** The application uses a centralized `ThemeData` object to ensure a consistent look and feel. It supports both light and dark themes and uses the `provider` package to manage theme changes.

### Design

- **Layout:** The application uses a responsive layout that adapts to different screen sizes. It uses a `SingleChildScrollView` to prevent overflow issues and a `Column` to arrange widgets vertically.
- **Header:** The home screen features a dynamic header with a background image and a welcoming message.
- **Cards:** The application uses custom card widgets to display destinations and travel packages. The cards have a modern design with rounded corners, shadows, and a clean layout.

### Features

- **Home Screen:** The home screen displays a list of popular destinations, trending packages, and a search bar.
- **Explore Screen:** A fully dynamic screen that allows users to discover featured destinations, search, and browse categories and trending packages.
- **Navigation:** The application uses a custom bottom navigation bar to allow users to switch between different screens.
- **Theme Toggle:** The application allows users to switch between light and dark themes.
- **Error Handling:** The application includes error handling for image loading, preventing crashes and displaying a placeholder image instead.

## Current Changes

- **Performance Optimization:** Optimized data loading to prevent unnecessary reloads, improving the overall performance of the application.
- **Layout Correction:** Fixed layout overflow issues to ensure all components are displayed correctly on the screen.
- **Improved User Interaction:** Added feedback to the "Book Now" buttons to provide a better user experience.
- **Dynamic Content:** Refactored the destination and package lists to be dynamically generated from data models, making the application more scalable and easier to update.
- **Consistent Dark Theme:** Fixed an issue where hardcoded colors in the dark theme were breaking the consistency of the color scheme. The `AppBar` now uses colors from the `ColorScheme`, ensuring a harmonious look in both light and dark modes.
- **Consistent Home Screen:** Removed hardcoded colors from the home screen for the search bar and section titles, ensuring a consistent and adaptive design.
- **Fully Dynamic Explore Screen:** Refactored the `explore_screen.dart` to fetch all its content dynamically from services, removing all hardcoded data and making it more maintainable.
- **UI Refinement:** Removed the "Categories" section from the `home_screen.dart` to streamline the user interface.
- **Bug Fix:** Corrected broken image URLs in the data services to ensure all images load correctly within the application.

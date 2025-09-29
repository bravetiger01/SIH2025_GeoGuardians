# Locatable

## Overview
Locatable is a Flutter application designed to enhance tourist safety through real-time location tracking, geofencing, and emergency support. The app leverages blockchain technology for secure data storage and provides features for both individual and group geofencing. It uses the Google Maps API for location-based services, including mapping and geofencing functionalities.

## Features
- **Tourist Signup**: Register using AADHAR/Passport KYC and receive verified credentials via email.
- **Login & Trip Management**: Create or join trips with geofence setup and safety score display.
- **Data Storage**: Securely store trip data and login credentials on Ethereum blockchain using Solidity smart contracts (no AADHAR/Passport data stored).
- **Geofencing**: Set up individual or group geofences for location monitoring using Google Maps API.
- **Emergency Support**: Trigger police SOS and share last known location offline or live location with families.
- **Authority Dashboard**: Provides police and hospitals with alerts, view tourist clusters, and heatmaps.

## Workflow
1. **Tourist Signup**: Users provide AADHAR/Passport KYC, generate an ID & password, and receive verified credentials via email.
2. **Data Storage**: Trip and login details are stored in a Solidity smart contract on the Ethereum blockchain.
3. **Trip Management**: Users can log in, create/join trips, and set up geofences with safety scores displayed.
4. **Geofencing**: Individual or group geofences are established using Google Maps API.
5. **Emergency**: In case of an emergency, users can send a police SOS, share offline last known location, or enable live location sharing with families.
6. **Authority Access**: Police and hospitals receive alerts, view tourist clusters, and access heatmaps via the authority dashboard.

## Installation
1. Ensure Flutter is installed on your system.
2. Clone the repository: `git clone <repository-url>`.
3. Navigate to the project directory: `cd locatable`.
4. Install dependencies: `flutter pub get`.
5. **Configure Google Maps API**:
   - Obtain a Google Maps API key from the Google Cloud Console:
     1. Go to [Google Cloud Console](https://console.cloud.google.com/).
     2. Create a new project or select an existing one.
     3. Navigate to **APIs & Services** > **Credentials**.
     4. Click **Create Credentials** > **API Key**.
     5. Enable the **Maps SDK for Android** and **Maps SDK for iOS** (if applicable) in the **Library** section.
     6. Copy the generated API key.
   - Add the Google Maps API key to your `android/app/src/main/AndroidManifest.xml`:
     ```xml
     <manifest ...>
       <application ...>
         <meta-data
             android:name="com.google.android.geo.API_KEY"
             android:value="YOUR_API_KEY"/>
       </application>
     </manifest>
     ```
     Replace `YOUR_API_KEY` with the API key obtained from Google Cloud Console.
6. Run the app: `flutter run`.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


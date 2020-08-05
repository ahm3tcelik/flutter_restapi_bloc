# Flutter-RestAPI-BLoC Example

Using Rest API with the BLoC pattern in Flutter

## Diagram
![](https://github.com/ahm3tcelik/flutter_restapi_bloc/blob/master/diagram.png)

## Screenshots
<img src="https://github.com/ahm3tcelik/flutter_restapi_bloc/blob/master/ss_1.png" width="250"> <img src="https://github.com/ahm3tcelik/flutter_restapi_bloc/blob/master/ss_2.png" width="250">

## Project Structure
```text   
 ├── lib
     ├── models                  
     ├── screens                  # User Interfaces
     ├── data                
     |   ├── api                  # HTTP Methods
     |       ├── user_api.dart    
     |   
     |   |── services             # Handling data from api
     |       |── user_service.dart
     |
     ├── widgets                  # Common Widgets
     └── main.dart        
```

## How to Use 

**Step 1:** Clone the repository

```
https://github.com/ahm3tcelik/flutter_restapi_bloc.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

# Precious-Plants
Nurture your nature needs with a mobile app that helps you properly care for your plants by tracking watering times and sunlight requirements!

**Minimum Viable Product (MVP)**
Users will be able to receive notifications for when to give sunlight, change soil, or water their plants. Using the search feature, or the “Take a photo” feature, a user can save as many plants as they wish to in their “Saved Plants” section. The app will then give a holistic guide on how to properly care for all the individual plants the user saves. 

Implement a system to save plants with information about watering frequency, type of soil, and sunlight needed. More possible information to include:
  - Pruning
  - Fertilization
  - Pest and disease control
  - Potting suggestions
  
- Have a “Take a photo” feature which uses a reverse image searching/machine learning algorithm to return the species of a plant.
- Have a search bar implemented to look up information about plants by species.
- Notification system to remind the user to change water, soil, etc.

**Stretch Goals**
- Users can leave their tips/advice on how to care for a plant under a “comments” section for a plant.
- Have a plant progress/time capsule option that shows the progress of the plant's growth based on photos the user takes.
- Ask for feedback on accuracy of plant species (for image search option) 

**Resources**

**Tech Stack**
- ***Plant Identification/Information API’s***
  1. https://trefle.io - Trefle API
     - Gives information about plant species, watering information, sunlight needed, etc
     - You can submit corrections/changes through an API call. 
  2. https://my.plantnet.org - Pl@nt Net API
      - Free, can use 50 free identification requests per day
  3.https://openfarm.cc - Open Farm API
       - Provides specific information on how to grow plants (including spacing information, etc)
- ***Front End***
  1. Flutter
    - Flutter uses Dart which is similar to Java
  2. React Native 
    - Might need to have familiarity with JavaScript for React Native
    
  Both are fairly easy to pick up.
  Both React Native and Flutter have a camera feature.

- ***Back End***
  1. Django 
    - It’s easier to use Python to create API’s and do debugging. 

**Software to Install**
- Gitbash
- Android Studio
- TensorFlow
- Django 

**Tutorials and Links**

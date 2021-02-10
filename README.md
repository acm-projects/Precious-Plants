<p align="center">
<img src="https://www.gaithersburgdental.com/wp-content/uploads/2016/10/orionthemes-placeholder-image.png" width="250">
  </p>

# Precious-Plants
***Nurture your nature needs with a mobile app that helps you properly care for your plants by tracking watering times and sunlight requirements!***

## Minimum Viable Product (MVP)

Users will be able to receive notifications for when to give sunlight, change soil, or water their plants. Using the search feature, or the “Take a photo” feature, a user can save as many plants as they wish to in their “Saved Plants” section. The app will then give a holistic guide on how to properly care for all the individual plants the user saves. 


- Implement a system to save plants with information about watering frequency, type of soil, and sunlight needed. 
  - More possible information to include: pruning, fertilization, pest and disease control, potting suggestions, etc.
- Have a search bar implemented to look up information about plants by species.
- Notification system to remind the user to change water, soil, etc.
- Have a “Take a photo” feature which uses a reverse image searching/machine learning algorithm to return the species of a plant.

## Stretch Goals
- Users can leave their tips/advice on how to care for a plant under a “comments” section for a plant.
- Have a plant progress/time capsule option that shows the progress of the plant's growth based on photos the user takes.
- Ask for feedback on accuracy of plant species (for image search option) 

## Resources/Tech Stack

  ### Plant Identification/Information API’s
   1. [Trefle API](https://trefle.io)
       - Gives information about plant species, watering information, sunlight needed, etc
       - You can submit corrections/changes through an API call. 
   2. [Pl@nt Net API](https://my.plantnet.org)
       - Free, can use 50 free identification requests per day
   3. [Open Farm API](https://openfarm.cc)
       - Provides specific information on how to grow plants (including spacing information, etc)
       
  ### Front End
  1. [Flutter](https://flutter.dev/docs/get-started/install)
      - Flutter uses Dart which is similar to Java.
  2. [React Native](https://reactnative.dev/docs/getting-started)
      - Need to have familiarity with JavaScript for React Native.
    
   - Both are fairly easy to pick up.
   - Both React Native and Flutter have a camera feature.
  
  3. Wireframing tools
  - [Figma](https://www.figma.com) 
     - Free, easy to create wireframes and save individual components.
  - [Adobe XD](https://www.adobe.com/products/xd.html?sdid=12B9F15S&mv=Search&ef_id=EAIaIQobChMItOel8Jje7gIV0ZFbCh368AhcEAAYASAAEgLSkfD_BwE:G:s&s_kwcid=AL!3085!3!394015009825!e!!g!!adobe%20xd!1641846436!65452675151)
     - Creates elegant wireframes and easy to pick up.

  ### Back End
  1. [Django](https://docs.djangoproject.com/en/3.1/topics/install/)
       - It’s easier to use Python to create API’s and do debugging. 
       - Much more easier to work with for integration purposes.

## Software to Install
- [Gitbash](https://git-scm.com/downloads)
- [Android Studio](https://developer.android.com/jetpack)
  - IDE for Flutter and React Native
- [Django](https://docs.djangoproject.com/en/3.1/topics/install/) 
- [PyCharm](https://www.jetbrains.com/pycharm/)
  - IDE for running Django
- [Homebrew](https://brew.sh)
  - Needed for installing React Native and other packages.
- [Adobe XD](https://www.adobe.com/products/xd.html?sdid=12B9F15S&mv=Search&ef_id=EAIaIQobChMItOel8Jje7gIV0ZFbCh368AhcEAAYASAAEgLSkfD_BwE:G:s&s_kwcid=AL!3085!3!394015009825!e!!g!!adobe%20xd!1641846436!65452675151)
  - For wireframing if this software is chosen.

## Tutorials and Helpful Links
1. ***Flutter installation***
   - [For Mac](https://www.youtube.com/watch?v=hL7pkX1Pfko)
   - [For Windows](https://www.youtube.com/watch?v=Z2ugnpCQuyw)
2. ***React Native installation***
   - [For Mac](https://www.youtube.com/watch?v=_oCQDtDW3j4)
   - [For Windows](https://www.youtube.com/watch?v=0DhQd_EK1Ng)
3. ***Django installation***
    - [For Mac](https://www.youtube.com/watch?v=FshRArXrEcM)
    - [For Windows](https://www.youtube.com/watch?v=2FvIa4BADvA)
4. [Flutter tutorial playlist](https://www.youtube.com/watch?v=1ukSR1GRtMU&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ)
   - Super helpful to give an introduction to how to use Widgets, etc.
5. [React Native tutorial playlist](https://www.youtube.com/watch?v=ur6I5m2nTvk&list=PL4cUxeGkcC9ixPU-QkScoRBVxtPPzVjrQ)
6. [Django Tutorial (for APIs)](https://www.youtube.com/watch?v=mNwAyMmGKoI&list=PL8GFhcuc_fW4cxdkRtWIlln1DQ3CZwQen)
7. [Helpful GitHub Cheatsheet](https://education.github.com/git-cheat-sheet-education.pdf)
8. [Article on UI/UX tips](https://www.uxpin.com/studio/blog/guide-design-consistency-best-practices-ui-ux-designers/)


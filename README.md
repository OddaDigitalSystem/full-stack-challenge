# Full Stack Challenge

Our customer run an iron/titanium smelter and their workers work normally in shifts.
During the work, the operators need to register logs that gives some information about what happened during the shift. This is called "Shift Log".

The challenge is to make a simple "Shift Log" management system in Javascript/React.

# Requirements

- The CRUDL Operations must be developed, both in frontend and backend
- Main programming language is Javascript/Typescript
- Frontend must be done using the React framework
- The code with the answers must be available on Github. Please add the user @rhuanbarreto in it if you don't want to make your repo public
- The system must be acessible publicly on the web

# Tips

These tips are nice to have in order to make sure you will get a smooth path. But you are free to choose any path according to the requirements.

- You are free to choose how you will do your backend. You can use ready solutions or make your own
- You can use create-react-app to kickstart your frontend
- You can use Material-UI as a component library for the frontend
- You can use Vercel/Netlify/Glitch to deploy your code

# Behaviour expected

In the ShiftLog.feature file in this repository, you will find alll the expected behaviours we will be testing in order to check if you managed to pass the challenge.

# Data Model

- ShiftLog
  - status - boolean - mandatory
    - 0 - Inactive
    - 1 - Active
  - event_date - datetime - mandatory
  - area - string - mandatory
    - Options
      - control_room
      - factory_floor
      - expedition
  - machine - string
  - operator - string - mandatory
  - comment - text - mandatory

# Bonus

You will earn extra points if you can show the following:

- Development of unit tests (Jest)
- Development of e2e tests based on the feature file (Cypress/Cucumber)
- Use TypeScript

# Delivery

Send an email with the repos info to us. Make sure the repos have a README showing where it's deployed and how it will be accessible.
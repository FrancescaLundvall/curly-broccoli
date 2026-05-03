# Platform Code Challenge

## Introduction

This repository contains a simple NestJS API that is being test and built using Github workflows. The resulting Docker image is pushed to Github Container registry.

## Your assignment

There are currently a few issues with this repository that make it not work correctly, meaning both the test and the build workflows are broken.

Import the code in this folder into a new repository in your own Github account, fix the bugs and add the new features and then share your repository with us.

- BUG 1: The build workflow is currently broken. Can you fix it?
- BUG 2: Separate PR's need to wait for the CI workflow to be completed. Allow them to run in parallel.

The things below are extra features we like to add to our repository. Can you add them?

- ADD 1: People use Macbooks at our work, can you also build the Docker image for arm64?
- ADD 2: We like to be notified in our Slack channel when a deployment has failed. Can you add that in a nice way? (You can use your own Slack instance or simply assume the message sending works without it actually being sent to a real Slack instance - focus on the Github workflow side of this feature)

## Normative Tech Values

When working on your solution it's good to keep our Tech Values in mind:

- **Consistency**: We unify solutions, frameworks, and processes so everyone can contribute effectively everywhere and avoid fragmentation.
- **Reliability**: We rely on robust automation and testing to catch issues early and earn the trust of our users.
- **Insight**: We cultivate deep domain understanding, instrument our code, and document for transparency.
- **Shared Responsibility**: We collectively share responsibility for our systems as well as improving them, ensuring future teams can build on solid foundations.
- **Pace**: We refine delivery and feedback loops to rapidly ship value to customers and learn from the feedback.

## Bonus points

Is there still time left after you fixed the problems? Add a few more things to this repository that will make it nicer to work with. You decide what that means.

You can also just add a TODO list of the things you would improve if you don't have enough time to implement anything else.

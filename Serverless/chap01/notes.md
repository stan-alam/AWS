Practice TDD with 3 step cycle, as in Red-Green-refactor.

1. Write the test to fail as expected. If the test fails the way you expect
you can be confident that it is testing the behavior of the application. At this
state the tests are *Red*.

##Serverless Web Applications

Traditional web apps assume that the server is an essential part of the system. The **application server** does most of the heavy lifting. It performs all the essential functions of the app, including storing the user's data, issuing security credentials and controlling navigation.
The web portion of the app is the interface to the back end, including some of the navigating aspects. The traditional approach is called the *n-tier architecture*, i.e the browser, the application server, and the one or more back end services makeup the tiers in the system.

**The serverless approach** You can remove all the tiers. Instead of treating the web clients as the interface to the application server, you can move the application logic into the browser by building a single page application. **You can server your application from a simple static web host- nothing more than a delivery mechanism for the application, while the browser acts as an application container**. The resulting design removes the middlemen from traditional web applications architectures and allows the browser to directly connect to any services that it needs.
Practice TDD with 3 step cycle, as in Red-Green-refactor.

1. Write the test to fail as expected. If the test fails the way you expect
you can be confident that it is testing the behavior of the application. At this
state the tests are *Red*.

##Serverless Web Applications

Traditional web apps assume that the server is an essential part of the system. The **application server** does most of the heavy lifting. It performs all the essential functions of the app, including storing the user's data, issuing security credentials and controlling navigation.
The web portion of the app is the interface to the back end, including some of the navigating aspects. The traditional approach is called the *n-tier architecture*, i.e the browser, the application server, and the one or more back end services makeup the tiers in the system.

**The serverless approach** You can remove all the tiers. Instead of treating the web clients as the interface to the application server, you can move the application logic into the browser by building a single page application. **You can serve your application from a simple static web host- nothing more than a delivery mechanism for the application, while the browser acts as an application container**. The resulting design removes the middlemen from traditional web applications architectures and allows the browser to directly connect to any services that it needs.

You can use OAuth2.0 identity providers such as facebook, google, twitter or create identities without storing passwords. To store data, you can connect to services like DynamoDB right from the browser. Serverless apps are low-cost and takes the worry out of having to learn different layers of the typical stack.

##No More Servers

No more need to be concerned with running out of disk space, rolling log files, monitoring CPU usage. As with most **Platform as a service** i.e PaasS approaches, a serverless web app keeps you focused on the app and not periphery stuff, like the infrastructure.

##Easy to scale

Rather than keeping data consistent between load-balanced application servers as you scale them horizontally, you can connect directly to web services that have already solved this problem.

##Low cost

The costs of these services can be also very low.

##Microservices friendly

This approach easily accommodates microservices and other services-oriented architecture. CAP theorem describes web applications passing messages usually in the form of requests and responses between nodes in a network and are limited in how they can do this.
**The more distributed the app, the more difficult for troubleshooting.**

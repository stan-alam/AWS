## Going Serverless


     Serverless is a misnomer. Where you use a compute service such as AWS Lambda to execute code or interact
     with an API, there are still servers in the background. The difference is that these servers are hidden.
     There is no infrastructure for the developer to think about. No way to tweak the underlying OS. Someone
     else takes care of the workings of the infrastructure management, freeing the developer to other things.
     Serverless is about running code in a compute service and interacting with services and APIs to get
     the job done. [1]

 For example in AWS Lambda functions are executed in *containers*. Containers are a server virtualization method
 where the kernel of the OS implements multiple isolated environments. With Lambda, physical servers still execute
 the code, but the developer does not need to spend time managing it. **It is common to call this approach serverless**
 [2]

 Typical web applications, the server accepts the HTTP requests from the front end and processes requests. Data might travel through numerous application layers before being saved to a database. The back end. finally, generates a response -- it could be in the form of JSON or XML, or fully rendered markup -- which is sent back to the client. Underlying this the system is much more complex and may include load balancing, transactions, clustering, caching, messaging, and data redundancy. This requires servers running in data centers **or in the cloud** that need to be **manageed, patched and backed up** [1.1]

**Platform-as-a-Service ( PasS ) and containers** have been introduced as a solution to inconsistent infrastructure environments, conflicts and server management overhead.  **PaaS is a form of cloud computing that provides a platform for users to run their software while hiding some of the underlying infrastructure**
Good use is to write to PaaS. Otherwise moving legacy applications to designed to run on a standalone server to PaaS may require additional resources and effort due to the ephemeral nature of PaaS implementations.

**Containerization is a way of isolating an application with its own environments. It is a light weight alternative to full blown virtualization** Containers are isolated and lightweight but they need to be deployed to a server -- whether in a public or private cloud, or onsite. They are an excellent solution when dependencies are in play but they have their own "housekeeping" challenges and complexities. **They are not as easy as simply running code directly in the cloud** [1.2]

**Lambda** is a compute service from AWS. **Lambda can execute code in a massively parallelized way in response to events.**
Lambda takes the developer's code and runs it without any need to provision servers, install software, deploy containers, or worry about low-level details( and OS ). AWS takes care of provisioning and management of their EC2 servers that run the actual code and provides a high-availability computer infrastructure--include capacity provisioning and automated scaling.
**Serverless architecture refers to these kinds of software architectures that do not rely on direct access to a server to work** By taking Lambda and making use of various powerful single-purpose APIs and web services, developers can build loosely coupled, scalable and efficient architectures quickly. *Moving away from servers and infrastructure concerns, as well as* **allowing the developer to primarily to focus on code is the ultimate goal behind serverless**.

## Service-Oriented Architecture and & Microservices

SOA is an architecture that clearly conceptualized the idea that a system cab be composed of many independent services. Much of SOA is still misunderstood because **developers often confuse design philosophy with specific implementation and attributes.** SOA does not dictate the user of any particular technology. Instead, it encourages an architectural approach in which developers create autonomous services that communicate via message passing and, **often have a schema** or a contract that defines how messages are created or exchanged. **Service reuseability and autonomy, composability, granularity, and discoverability are all important principles associated with SOA**

Think of Microservices and serverless architectures as spiritual descendants of service-oriented architecture. They retain a lot of the aforementioned principles and ideas while attempting to address the complexity of old-fashioned SOA. A reconciliation of the past SOA ideas with practice.

**Microservices are small, standalone, fully independent services built around a particular purpose or capability. A microservice may have an application tier with its own API and database.


SA does adopts some of the mantras of microservices, i.e for example, one can consider each function to be its own standalone service, with its own business purpose.

## Service architecture gives the developer freedom to apply as few or as many microservices principles without forcing him/her to a single path.










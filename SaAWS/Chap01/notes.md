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

**Platform-as-a-Service ( PasS ) and containers**





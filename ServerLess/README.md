Full Stack Serverless

 software engineer looking to build full stack applications, especially those interested in cloud computing. It is also aimed at frontend developers looking to learn how to use their existing skill set to build full stack applications using cloud technologies.

 It is also a good resource for CTOs and startup founders looking to maximize efficiency and move

The goal of this book is to introduce you to all of the pieces needed to build a real-world and scalable full stack application using React and serverless technologies. It gradually introduces features (like authentication, APIs, and databases) and some techniques to implement these features, both on the frontend and backend, by building out different applications in each chapter.


 People have typically associated cloud computing with backend development and DevOps. However, over the past few years, this has started to change. With the rise of functions as a service (FaaS),

This book focuses on bridging the gap between frontend and backend development by taking advantage of this new generation of tools and services using the Amplify Framework.


 For an academic take on what serverless means, you may wish to read the 2019 paper written by a group at UC Berkeley, “Cloud Programming Simplified: A Berkeley View on Serverless Computing,”1. In this paper, the authors expanded the definition of serverless:
 
 While cloud functions—packaged as FaaS (Function as a Service) offerings—represent the core of serverless computing, cloud platforms also provide specialized serverless frameworks that cater to specific application requirements as BaaS (Backend as a Service) offerings. Put simply, serverless computing = FaaS + BaaS.

 Backend as a service (BaaS) typically refers to managed services like databases (Firestore, Amazon DynamoDB), authentication services (Auth0, 
Note: 01

Amazon Cognito), and artificial intelligence services (Amazon Rekognition, Amazon Comprehend), among other managed services. Berkeley’s redefinition of what serverless means underscores what is happening in the broader spectrum of this discussion as cloud providers begin to build more and better-managed services and put them in this bucket of serverless.

Note: 2

following are some traits and characteristics that are generally agreed upon by the industry.
Note: 3


 When you decide to implement FaaS, the only thing you should have to worry about is the code running in your function. All of the server patching, updating, maintaining, and upgrading is no longer your responsibility. This goes back to the core of what cloud computing, and by extension serverless, attempts to offer: a way to spend less time managing infrastructure and spend more time building features and delivering business value.

Note: 3

Managed services usually assume responsibility for providing a defined set of features. They are serverless in the sense that they scale seamlessly, don’t require any server operations or need to manage uptime, and, most importantly, are essentially codeless.

Note: 4


 Scalability

 One of the primary advantages of going serverless is out-of-the-box scalability. When building your application, you don’t have to worry about what would happen if the application becomes wildly popular and you onboard a large number of new users quickly—the cloud provider will handle this for you.


With serverless technologies, you pay only for what you use. With FaaS, you’re billed based on the number of requests for your functions, the time it takes for your function code to execute, and the reserved memory for each function. With managed services like Amazon Rekognition, you are only charged for the images processed and minutes of video processed, etc.—again paying only for what you use.


With fewer features to build, developer velocity increases. Being able to spin up the types of features that are typical for most applications (e.g., databases, authentication, storage, and APIs) allows you to quickly focus on writing the core functionality and business logic for the features that you want to deliver.


A/B testing (also known as bucket testing or split testing) is a way to compare multiple versions of an application to determine which one performs best. Because of the increase in developer velocity, serverless applications usually enable you to A/B test different ideas much more quickly and easily.

Note: 5

Another advantage of using these service providers is that they will strive for the least amount of downtime possible. This means that they are taking on the burden of not only building, deploying, and maintaining these services, but also doing everything they can to make sure that they are stable.
Note: 6


 Most engineers will agree that, at the end of the day, code is a liability. What has value is the feature that the code delivers, not the code itself. When you find ways to deliver these features while simultaneously limiting the amount of code you need to maintain, and even doing away with the code completely, you are reducing overall complexity in your application.
Note: 7

The Serverless Framework utilizes a combination of a configuration file (serverless.yml), CLI, and function code to provide a nice experience for people wanting to deploy serverless functions and other AWS services to the cloud from a local environment. Getting up and running with the Serverless Framework can present a somewhat steep learning curve, especially for developers new to cloud computing. There is much terminology to learn and a lot that goes into understanding how cloud services work in order to build anything more than just a “Hello World” application.


Overall, the Serverless Framework is a good option if you understand to some extent how cloud infrastructure works, and are looking for something that will work with other cloud providers in addition to AWS.


SAM allows you to build serverless applications by defining the API Gateway APIs, AWS Lambda functions, and Amazon DynamoDB tables needed by your serverless application in YAML files. It uses a combination of YAML configuration and function code and a CLI to create, manage, and deploy serverless applications.
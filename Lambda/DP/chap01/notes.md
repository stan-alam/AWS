## AWS Lambda

	With AWS Lambda you pay for

	the number of invocations
	the hundreds of milliseconds of execution time of all invocations, depending on the memory given to the functions.

The execution times costs grow linearly with memory: if you double the memory and keep the execution time the same, you double that part of the cost.

# 1.1 Introducing AWS Lambda

AWS Lambda is different from the traditional approach. You only need to give your logic, grouped in functions and the service itself takes care of executing the functions, if when required, by managing the software stack used by the runtime you choose, the availability of the platform and the scalability of the infrastructure to sustain the throughput on the invocations.

Functions are executed in **containers** Containers are a server virtualization method where the kernel of the OS implements multiple isolated environments. In *Lambda*, physical servers still execute the code, but because you don't need to spend time managing them, it's common to define this kind of approach as *serverless.*


 				http://docs.aws.amazon.com/lambda/latest/dg/currentsupported-versions.html



When you create a new function in Lambda, you choose a *function name*, create your code and specify the configuration of the execution environment that will be used to run the function, including the following:

   * the maximum memory size that can be used by the function
   * A timeout after which the function is terminated, even if it hasn't completed
   * A role that describes what the function can do, and on which resources, using
   AWS identity and Assessment (IAM)

#
     When you choose the amount of memory you want for your function, you're allocated proportional CPU power.
     For example, choosing 256mb of memory allocated approx. twice as much CPU power to your lambda function
     as would be requesting 128 MB of mem and half as much CPU power
     as choosing 512 MB of memory.


AWS Lambda implements the execution of those functions with an efficient use of the underlying computer resources that allows for an innovative cost model. **With AWS Lambda you pay for:**

   * **The number of invocations**
   * **the hundreds of milliseconds of execution time of all invocations, depending on the memory given to the functions.**

Free tier is the first one million invocations or the first 400,000 seconds of execution time with 1 GB of mem.

When you call a function with Lambda, you provide an event and a context in the input:

   * the event is the way to send input parameters for your function and is expressed using JSON syntax.

   * the context is used by the service to describe the execution environment and how the event is received and processed.

Functions can be called *synchronously* and return a *result* This is known as **RequestResponse** invocation type, primarly in AWS CLI and/or Lambda reference documentation.


e.g. a simple synchronous function( RequestResponse invocation ) to compute the sum of two numbers can be implemented in Lambda by using either the JS runtime or Python

in JS:

```Javascript

exports.handler = (event, context, callback) => {
	var result = event.value1 + event.value2;
	callback(null, result);
};

```

in Python:

```Python

def lambda_handler(event, context):
	result = event['value1' + event['value2']
	return result

```

Giving as input those functions an event with the following JSON will give back a result of '30:'

```Javascript

{
	"value1": 10,
	"value2": 20
}

```

Functions can also be called *asynchronously*. In such a case the call returns immediately and no result is given back, i.e. while the function is still continuing its work. In AWS Lambda API reference documentation and AWS CLI, this is described as **Event** invocation type.

Lambda interactions are *stateless* i.e. when the Lambda function terminates, no session information is retained by the AWS Lambda Service.
Keeping in mind the *stateless* nature of Lambda, it becomes useful when calling the the lambda functions asynchronously ( returning no value ) when they are accessing and/or modifying the status of other resources. *such as files in a shared repo, records in a database and so on* Or when calling other services, e..g send an email or to **send a push notification** to a mobile device.

         Functions can create, update, or delete other resources. Resources can also be other services
         that can do some actions, such as send email.

e.g it's possible to use the logging capabilities of Lambda to implement a simple logging function ( that can be called asynchronously )

in Node:

```Javascript

exports.handler = function(event, context){
	console.log(event.message);
	context.done();
};
```

in Python:

```Python

def lambda_handler(event, context):
	print(event['message'])
	return

```

Input to the function can be sent as a **JSON** event to log a message:

```Javascript

{
"message" : "this message is being logged!"
}

```

**Async calls are useful when functions are subscribed to events generated by other resources** such as S3, an object store, or Dynamo DB, a fully managed NoSQL database.

The two functions are paired/integrated with Lambda and CloudWatch logs. Functions are executed without a default output device. **Headless environment** and a default logging capability is given for each AWS lambda runtime to ship the logs, such as choosing the retention period or creating metrics from logged data.

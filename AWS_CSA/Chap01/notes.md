## This is the AWS Certified Solutions Architect Study workspace

```java
public class HelloMultiverse {
    public static void main( String[] args )
    {
        System.out.println("Hello, Multiverse!");
    }
}
```

## Variable vs. Capital Expense

  Instead of having to invest in data centers and services before knowing how to use them, you can  pay
  only when you consume computing resources and pay only for how much you consume.

## Economics of Scale

  Another advantage of cloud computing is that *organizations benefit from massive economies of scale*. Using
  cloud computing can achieve a lower variable cost than would to get your own data-center. As users in
  the thousands are aggregated in the cloud, providers such as AWS can achieve higher economics of scale,
  this in turn translates to lower prices.

## Stop guessing capacity

  Making a capacity decision prior to deploying an application, you often end up either sitting on expensive
  idle resources or dealing with limited capacity. With cloud computing, organizations *stop guessing about
  capacity requirements* for the organization, because the cost and time it takes to experiment and develop
  is significantly lower.

##Focus on Business Differentiators

  Cloud computing allows organizations to focus on their business priorities, instead of on the heavy lifting
  of racking, stacking and powering servers. In this way organizations can *stop spending money on running and maintaining data centers*

## Go Global in Minutes

  Another advantage of cloud computing is the ability to *go global in minutes*. Organizations can easily deploy their applications to multiple locations around the world with a few clicks. This allows for redundancy across the globe and to deliver lower latency and better experiences to their customers at minimal cost. Cloud computing allows for smaller organizations/enterprises to go global.

## Cloud Computing Deployment Models

  The two primary cloud computing deployment models that the exam focuses on are "all in" cloud-based deployments and hybrid deployments. Understand how each strategy applies to architectural options and decisions.

  An *all-in-cloud-based application* is fully deployed in the cloud with all components of the application running in the cloud. Applications in the cloud have either been created in the cloud or have been migrated from an existing infrastructure, monolithic on premise. The benefits of cloud based applications are that they can be built on low-level infrastructure pieces or can use higher-level services that provide abstraction from the management, architecting and scaling requirements of core infrastructure.

  A *hybrid deployment* is a common approach taken by many enterprises that connects infrastructure and applications between cloud-based resources and existing resources, typically in an existing data center. The most common method of hybrid deployment is between the cloud and existing on-premises infrastructure to extend and grow an organization's infrastructure while connecting cloud resources to internal systems. Choosing between an existing investment in infrastructure and moving to the cloud does not need to be a binary decision. Leveraging dedicated connectivity, identity federation, and integrated tools allows organizations to run hybrid applications across on-prem and cloud services.

## AWS Fundamentals

   At its core, AWS provides on-demand delivery of IT resources via the Internet on a secure services platform, offering compute power, storage, databases, and content delivery. ( along with other functionality ). Using AWS resources is like purchasing electricity from a company instead of generating your own. The advantages are: **Capacity exactly matches your need, you pay only for what you use, economies of scale result in lower costs, and the service is provided by vendor experienced in running large networks.**

## Global Infrastructure

   AWS locations around the world are composed of *regions and Availability Zones*. Each *region**  is **a separate geographical area. Each region has multiple, isolated locations known as AVAILABILITY ZONES. This achieves the greatest possible fault tolerance and stability. Each availability Zone is also isolated, but are connected to each other through low-latency links. AZ's are physically seperaeted within a typical metro region and are located in lower-risk flood plains ( specific flood categorization varies by region ) Also use UPS or uninterrupted power supply along with on site generators, this all to reduce single point of failure. They are also redundantly connected to multiple tier-1 transit providers.

   By applying your app in more than one availability zone you can introduce redundancy.

## Security and Compliance

   Security is a core functional requirement that protects mission-critical info from accidental leakage, theft, deletion or integrity compromise. Helping to protect the confidentiality, and integrity and availability of the systems. See CIA contract with AWS.

## Security

    Cloud security at AWS is the number one priority


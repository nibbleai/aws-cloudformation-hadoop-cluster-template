# AWS CloudFormation template for a 3-node Hadoop cluster

If you want to start playing around with Hadoop, here is a CloudFormation template to build a 3-node cluster of EC2 instances, with fix public IPs addresses and the appropriate `SecurityGroups` for HDFS.

## Usage

### Prerequisites

* Have an AWS account
* Have a user role with the appropriate authorizations, and get his credentials
* Have an AWS SSH key pair
* Install AWS Command Line Interface, and log in with your credentials

We also assume that you already have an existing VPC. If you don't have one, get some information [here](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/gsg_create_vpc.htm) to create one.

### Launch

#### With our script

Set up the required environment variables:

```bash
export STACK_NAME='your-stack-name'
export SSH_KEY_NAME='your-aws-key-name'
export VPC_CIDR='your-vpc-cidr'
```

Your VPC Cidr is the IP addresses block that will be used internally by your EC2 instances. Example: `172.31.0.0/16`. You will need to create a AWS VPC first if you don't have one.

Then, you can run the launch script directly, with our default parameters.

`$ ./launch.sh`

#### With your own parameters

You can also launch your stack creation with your chosen parameters, to have more control over the type of instance, the Operating System and so on. See the full reference of the `create-stack` command [here](https://docs.aws.amazon.com/cli/latest/reference/cloudformation/create-stack.html).


### Monitor

Log in to your AWS console, and check the creation of your stack by visiting the CloudFormation pages.

After a few minutes, your stack must be ready.

### Delete your stack

From your command line:

```bash
$ aws cloudformation --stack-name ${STACK_NAME}
```

Or log in to your AWS console, and delete the stack from the CloudFormation pages.

## Credit

Courtesy of the [nibble.ai](https://nibble.ai) team — Published under MIT License.

Enjoy 😃
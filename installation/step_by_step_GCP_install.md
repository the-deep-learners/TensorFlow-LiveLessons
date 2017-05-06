# Step-by-Step Instructions for Installation on a New GCP Ubuntu Instance

N.B.: These are **rough notes** for creating an Ubuntu machine on Google Cloud Platform that runs Dockerized Jupyter notebooks. 

1. create an instance in [Google Cloud Platform Compute Engine](https://console.cloud.google.com/compute), Amazon Web Services, or another cloud-computing provider 
	1. `us-east1-d` if GPU desired in U.S. (April 2017)
	2. boot disk: 
		1. select `Ubuntu 16.10`, i.e., `amd64 yakkety` for Docker compatibility later
		2. select `SSD` if you're willing to pay for the significant speed benefits
		3. I chose `200 GB`, which should be enough space and costs $34 if you use it for a full month (standard is $0.04/GB/month; SSD is $0.17/GB/month)
	3. this comes out to $0.579/hour, or $422.36 if you run it for a full month (i.e., 730 hours)
2. ssh into instance, e.g.: 
	* [like so](https://cloud.google.com/compute/docs/instances/connecting-to-instance) for GCP
3. from the home directory (which is typically where your ssh session begins): 
	* `git clone https://github.com/the-deep-learners/TensorFlow-LiveLessons.git`
		* this command retrieves all of the code for this LiveLessons
		* ...and puts it in a new directory called `TensorFlow-Livelessons`
4. [install Docker](https://docs.docker.com/engine/installation/linux/ubuntu/) (go from `Install using the repository` through to running the `hello-world` image; the free CE version does everything you need; use `amd64` during repository installation)
5. create a [firewall rule](https://cloud.google.com/compute/docs/networking?hl=en_US&_ga=1.268488185.92442388.1465331838#firewalls) to add a tag to your instance in your [Compute Engine table](https://console.cloud.google.com/compute) 
6. follow steps six through nine from my [instructions for installation on Mac OS X](https://github.com/the-deep-learners/TensorFlow-LiveLessons/blob/master/installation/step_by_step_MacOSX_install.md)
7. **on your local machine**, navigate to `<EXTERNAL_IP>:8888/?token=<YOUR_TOKEN>` in the web browser of your choice 
	* the `<EXTERNAL_IP>` of the instance you created is shown in your [Compute Engine table](https://console.cloud.google.com/compute)
	* `<YOUR_TOKEN>` should have been output by your `docker run` call in the previous step 



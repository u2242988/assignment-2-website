# aaf-internal-notes-system
ACME Automotive Finance's internal notes system

---

Assumptions 

---

Often times within a software engineering environment, based on a plethora of different factors, you may need to make assumptions about different aspects of a project. My programming partner and I have had to make multiple assumptions over the course of the project lifecycle and by thoroughly documenting each assumption and the reasoning behind it we have provided the platform for third-parties to be able to gain insight into our decision making processes should other engineers need to pick up where we left off in the future.  

The first assumption we made revolved around the project’s scope. We assumed the scope of our assigned project would not be altered over its lifecycle. More specifically, the objectives of the project, it’s deliverables, as well as the applicable constraints wouldn’t change. To elaborate: 

    Constraints – the constraints which were considered during the earlier stages of the project, such as the time we were allocated to complete the project, the costs associated with the project, and the resources available to us during the project. Fortunately, all of the constraints were evaluated not to be an issue nor cause hinderance to our progression. 

    Deliverables – when starting to develop the codebase to implemented the desired delete button, and secure the codebase from potential vulnerabilities, we assumed we wouldn’t have to alter the notes system in any other way. In order to delegate the workload between us we had to determine an appropriate amount of time to assign to each task, if we thought the expected deliverables of the project were to change we could not spend a significant time on each aspect of the project.  

    Objectives – A rather large assumption of ours was the objectives of the project would not change, if the objectives of the project were to change, it may be the case of our changes not being relevant or applicable to meet the needs of the end-users (account teams members).  

The next assumption we made is the consistency of the expected user behavior. For example, we assumed users would interact with the deliverables in a manner which is consistent with the actions which are expected to be carried out. More specifically, one of the pivotal points of our project was to implement a delete button and in the case of the button, we would expect users to interact with the button through typical events (i.e. clicks, double clicks) and not try and enter erroneous data or manipulate data through other means as it may unintended affects on our implemented feature or the rest of the program, and by extension, API.  

Another assumption we made was the pre-existing codebase would be correct and function as intended. When my partner and I started the project, we were provided with a template including, but not limited to, a JavaScript server and front-end CSS – we made a reasonable assumption being the server, as well as every other aspect of the codebase, would function as we would expect when interacting with it and attempting to implement new features.  

---

Drawbacks to architectural descisions 

---

When digesting the user story and attempting to conjure an appropriate approach to it's implementation, you have to take into consideration the benefits and drawbacks of each implemented change. Although I am supposed to documment the drawbacks of each implemented change, O feel as though every implementation is appropriate and alternative approaches cannot be considered. 

The only drawback which could be remotely relevant is for the actual implemented code rather than its function, technically speaking, the codebase could be simplified to contain quantifiably less code. However, the reason I did not chose to follow such an approach to the implementation of the user story is because the supporting documment provided to us at the start of the project stated to implement the user story with minimal change, and to simplify the code I would first have to change the pre-existing codebase which would go against the desired approach specificed by the project manager.

In essence, minimal drawbacks can be identified because my decisions followed the supporting documment recommendations closely. 




----------------------------------------------------------------
Deploy command

AWS_DEFAULT_REGION=eu-west-2 AWS_PROFILE=warwick-2-james aws cloudformation deploy --stack-name=aaf-networks --template-file template.yml --parameter-overrides UserDataScript="$(cat ec2-user-data.sh)" SSHKey="$(cat aaf-key.pub)"
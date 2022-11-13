[](https://)Original App Design Project - README Template



# Sharing Notes App

##  Video Walkthrough Milestone 5
![signupandprofile](https://user-images.githubusercontent.com/99046066/201547042-2746d24b-26d2-4f16-a50d-270a7a0370eb.gif)



##  Video Walkthrough Milestone 4

![milestone2-Pod18](https://user-images.githubusercontent.com/99046066/200099497-af686d50-a359-448b-a893-6a12dc3c02b2.gif)

## Table of Contents
1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview
### Description

Make studying easier! With our Note Sharing App you can upload your notes and have access to other student's notes! Note Sharing App connects you to students in your class and from other Univesities across the world. Note Sharing App offers a variety of document types from .pdf, .docx, .jpeg or upload directly from camera. 

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:**
- **Mobile:**


If our app were a website, users would run into unwanted complexities in regards to downloading their notes from a mobile device, changing file formats and etc. Additionally, we have features like taking pictures of notes for uploading as well as push notifications that are easier to manage let alone only possible on mobile devices. 

- **Story:**

The story around our Sharing Notes app is extremely compelling as I can't even begin to fathom the amount of times people have asked for notes when they've missed class. Furthemore, being able to look at how someone else processes information from lecture could be an asset to the learning of users. Additionally, some people are better equipped to pay attention during lecture while some may not, therefore, you can infer that better equipped students would have better notes, which will benefit all in the class when shared. Thus, students that are sick for consecutive days or miss an important lecture don't have to scramble to get back on track since our app can help with that! 


- **Market:**

The market could potentially be students from elementary to postsecondary education because notes are taken at all of these levels with different complexities of course. But, this means that the market is huge and the product is unique enough that it could potentially become the golden standard for sharing notes as opposed to individuals sending notes in group chats or systems alike. Furthermore, professional environments tend to have meetings weekly, if not daily, and conflicting meetings could mean the abscence of key team members. The Sharing Notes app could help those individuals get back on track to deliver their product in a timely manner. 

- **Habit:**

Since many people like to review their notes after a meeting or lecture, the users could develop a habit of cross checking their notes with those uploaded, which will naturally become an integral part of their learning experience. Furthermore, examinations like midterm or final exams equire students to review information from previous lectures, which is when their habit kicks in to verify their intution and notes with those of their classmates. On average, users would be consuming and producing content through the app. 


- **Scope:**

The scope of the app is pretty well defined to the point where we can add complexities after laying a strong foundational system. It will be challenging since we will learn to incorporate different types of file such as picture from camera, pdf, .docx, .jpeg and etc. If the complexities turn out to be too challenging for us, the stripped down version of the app is still something students will need and enjoy dispite maybe having studying tracking and things alike. 


## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories/FEATURES**

* - [x] User login 
* - [x] User Registration
* - [x] User can see posts (Stream)
* - [x] User comment on posts
* - [x] User can vote or like for a good posts
* User can download notes (started)
* User can track their studying progress (started)
* User can take picture of notes to post (started)

**Optional Nice-to-have Stories/FEATURES**

* User can search for other courses at universities
* User can setup their schedule (quizzes, exams, etc.)

### 2. Screen Archetypes

* Launch Screen
* Login Screen
   * User login is done here. 
* Registration Screen
   * User can register their account here.
* Stream Screen
    * User can like, comment and see other posts
* Post/Upload Screen
    * User can upload screen 
* Profile Screen
    * User can check their studying progress, calendar dates, their own posts, liked posts (?doable?)

### 3. Navigation: 3-4 tabs 

**Tab Navigation** (Tab to Screen)

* Post Tab
    * User can easily start their post from the stream screen
* Profile Tab
    * User can logout here instead of having tab navigation for logout on stream screen

**Flow Navigation** (Screen to Screen)

* Launch Screen
    * Login or Registration Screen or goes straight home if already logged in 
* Login Screen
    * Home/Stream to see all posts
* Registration Screen
    * Home/Stream to see all posts
* Stream Screen
    * User can go their profile, post or "??search???"
* Post/Upload Screen
    * Home/Stream to see all posts 
* Profile Screen
    * Home/Stream or Logout from their account 

## Wireframes

![](https://i.imgur.com/4enM4HJ.jpg)


<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 


### Models
| Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the user post (default field) |
   | author        | Pointer to User| image author |
   | image         | File     | image that user posts |
   | caption       | String   | image caption by author |
   | commentsCount | Number   | number of comments that has been posted to an image |
   | likesCount    | Number   | number of likes for the post |
   | createdAt     | DateTime | date when post is created (default field) |
   | calendarTracking | Dictionary[DateTime:"String"]  | user has their assignments tracked as a dictionary with keys as the days of the month where the assignments are they values for those keys |

### Networking

<!-- * Launch Screen
    * Login or Registration Screen or goes straight home if already logged in 
* Login Screen
    * Home/Stream to see all posts
* Registration Screen
    * Home/Stream to see all posts
* Stream Screen
    * User can go their profile, post or "??search???"
* Post/Upload Screen
    * Home/Stream to see all posts 
* Profile Screen
    * Home/Stream or Logout from their account 
 -->- 
 TODO: [Create basic snippets for each Parse network request]
   - Registration Scrren
       - **Shivani** (Create/POST) Create new user object that has username, password, email and assignments as values logged 

    let user = PFObject(className:"appUser")
    user.setUsername(username)
    user.setUsername(password)
    user.setUsername(email)
    user.saveInBackground {
      (success: Bool, error: Error?) in
      if (success) {
        print("Successfully added!")
      } else {
        print("Error, didn't add.")
      }
    }
   - Stream Screen
      - **Roselle** (Read/GET) Query all posts 
```
let query = PFQuery(className:"Posts")
query.getObjectInBackground(withId: "xWMyZEGZ") { (posts, error) in
    if error == nil {
        // Success!
    } else {
        // Fail!
    }
}

```
      - **Giang**(Create/POST) Create a new like on a post

```
let likes = PFObject(className:"Likes")
likes.incrementKey("like")
likes.saveInBackground {
  (success: Bool, error: Error?) in
  if (success) {
    print("Successfully like!")
  } else {
    print("Error, number of like is not updated.")
  }
}
```

  - **Giang**(Delete) Delete existing like

```
likes.decrementKey("like")
likes.saveInBackground {
  (success: Bool, error: Error?) in
  if (success) {
    print("Successfully unlike!")
  } else {
    print("Error, number of like is not updated.")
  }
}

```

  - **Roselle** (Create/POST) Create a new comment on a post

```
let myPost = PFObject(className:"Post")
myPost["title"] = "I'm Hungry"
myPost["content"] = "Where should we go for lunch?"

// Create the comment
let myComment = PFObject(className:"Comment")
myComment["content"] = "Let's do Sushirrito."

// Add a relation between the Post and Comment
myComment["post"] = myPost

// This will save both myPost and myComment
myComment.saveInBackground()

```

  - **Shivani** (Delete) Delete existing comment

    ```
    let didDelete = deleteObject(user)
    didDelete.saveInBackground {
      (success: Bool, error: Error?) in
      if (success) {
        print("Comment deleted!")
      } else {
        print("Comment was not deleted!")
      }
    }

- Post/Upload Screen
   - **Giang**(Create/POST) Create a new post object
    
```
let posts = PFObject(className:"Posts")
posts["author"] = PFUser.current()
posts["caption"] = "This is the caption"
let imageData = imageView.image!.pngData()
let file = PFFileObject(name: "image.png", data: imageData!)
posts["image"] = file
posts.saveInBackground { (succeeded, error)  in
    if (succeeded) {
        print("Post saved!")
    } else {
print("Error. Post isn't saved!")
    }
}
```

    
    
   - Profile Screen
      - **DIEGO**(Read/GET) Query logged in user object
      -
     
```
var query = PFUser.query()
query.whereKey(USERNAME_KEY equalTo:username)
query.getFirstObjectInBackgroundWithBlock {
(user, error)
}
    if user != nil{
       //The user has been found
       PFUser nameOfTheUser = (PFUser *)object;
    }
    
    
    else {
    print("Error:  \(error?.localizedDescription)")
    }
```

- **DIEGO**(Update/PUT) Update user profile image
```
let posts = PFObject(className:"ProfileImages")
posts["author"] = PFUser.current()
let imageData = imageView.image!.pngData()
let file = PFFileObject(name: "image.png", data: imageData!)
posts["image"] = file
posts.saveInBackground { (succeeded, error)  in
    if (succeeded) {
        print("Post saved!")
    } else {
print("Error. Post isn't saved!")
    }
}
```

- **DIEGO**: (Read/GET) Query logged calendarTracking to be displayed (TBD: optional user stories)

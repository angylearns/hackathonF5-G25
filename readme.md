#  🍎 Pedagogical objetive
This project is the result of the F5 Hackathon - 5th Edition organized by Somos f5 https://www.somosf5.org/ . A group of 7 unknown students have developed this work in less than 48h. The objective is to learn how to work with a group of strangers with diverse knowledge. A GREAT CHALLENGE FOR US !!! 🙈

The invited company [Globant](https://www.globant.com/) proposes us the challenge of developing a Marketplace.

# 🧾 Description 
We have developed Tech Revive, a marketplace that offers high quality refurbished technology products at affordable prices by making smart choices to reduce environmental impact. 🌏



# Technologies 
![My Skills](https://skillicons.dev/icons?i=html,css,js,jquery,git,laravel,figma,github,nodejs,vite,bootstrap,php,discord,react,)

# 🔧 Installation 
This is a proyect on [React](https://es.react.dev/) and [Laravel](https://laravel.com/) 

To install our app follow these steps
 
 **First Steps**
 1. Clone the repository on your local machine using <code>[git clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)</code> 
 2. This is a project with backend and you need your computer to work as a server. You can do it with [xampp](https://www.apachefriends.org/es/index.html) installed. 
 3. Open the project folder.  You need to have [Node.js](https://nodejs.org/en/download) and [Composer](https://getcomposer.org/) installed on your system.
 
 **Install Dependencies:** 
 
   4. Navigate to the FRONTEND folder and run the comand `npm -install`
  5. Navigate to the BACKEND folder and run the comand `npm -install` and `vendor update`

**Configure Environment Variables:**

6. Make a copy of the `.env.example` file in the project root directory and rename it to `.env`. Then, update the variables in the `.env` file according to your environment settings, such as database connection details and application-specific configurations.

7. **Generate Application Key:** Run the following command in your terminal or command prompt to generate a new application key:
`php artisan key:generate`. This key is used to securely encrypt data within your application, such as user sessions and cookie data.

8. **Run Migrations (If Required):** This application requires database migrations, run the following command to execute them:
 `php artisan migrate` 
 and if requieres generate fake data  run in this order:
`php artisan db:seed --class=Location` 
`php artisan db:seed --class=Category `
`php artisan db:seed --class=DatabaseSeeder`

 This command will create the necessary database tables based on the migration files provided in the `database/migrations` directory.
 
9.  **Start the servers:** Once everything is configured, you need to start several servers 
a. Apache and Mysql server from xampp
b. On the backend path run the following command `php artisan serve`.
c. In the frontend path run the command `npm run vite`. It returns the http address that we must open to see the React app working with the Laravel api.

  🪐​*ENJOY*🪐​

# 🧙🏻‍♀️ Autors 

 - Ángela Machado https://github.com/angylearns 
 -  Carolay Vasquez     carol.vasquez97xd@gmail.com  
 - Elena Pombo elenapombocorrales@gmail.com 
 - Nhoeli Salazar https://github.com/Nho89
 -  Maria Andrea An    https://github.com/mariandrean  
 - Maria Cao Caamaño     https://github.com/maicaocaa 
 - Stefania Georgescu   stefaniageorgescu.x@gmail.com
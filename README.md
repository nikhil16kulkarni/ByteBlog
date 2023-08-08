# README

# ByteBlog

Welcome to the ByteBlog - An Interactive Blog Application! This web application allows users to create, edit, and delete blog posts, as well as interact through comments. It's built using Ruby on Rails and Bootstrap, providing an engaging and user-friendly experience for both creators and readers.

## Features

- **Create, Edit, and Delete Posts:** Seamlessly create new blog posts, edit existing ones, and remove outdated content.
- **User Authentication:** Secure user authentication system ensures only authorized users can create posts and manage comments.
- **Interactive Comments:** Enable rich user engagement by adding and deleting comments on blog posts.
- **Responsive Design:** The application is designed with Bootstrap to provide a responsive and visually appealing experience across different devices.

## Getting Started

1. Clone the repository: `git clone https://github.com/nikhil16kulkarni/ByteBlog.git`
2. Navigate to the project directory: `cd ByteBlog`
3. Install dependencies: `bundle install`
4. Set up the database: `rails db:create && rails db:migrate`
5. Start the server: `bin/rails server`
6. Access the application in your web browser at: `http://localhost:3000`

If facing an error like this - </br> `error: while executing gem ... (gem::remotefetcher::fetcherror) errno::econnreset: an existing connection was forcibly closed by the remote host. - ssl_connect (gem::remotefetcher::fetcherror)`

This should resolve your error: (Windows) (Switching to ipv4) </br>
`$webClient = New-Object System.Net.WebClient` </br>
`$webClient.DownloadFile("http://rubygems.org", "rubygems_ipv4.html")` </br>
`gem update –system` </br>
`gem install bundler` </br>
`bundle install` </br>


## Usage

- Create a new account or log in.
- Explore existing blog posts.
- Create your own blog posts and customize them.
- Engage with the community by adding comments to posts.
- Edit or delete your posts and manage comments.

## Contributing

Contributions are welcome! If you have any ideas, enhancements, or bug fixes, please open an issue or submit a pull request explaining the changes you've made.

## Contact

If you have any questions or feedback, feel free to reach out to us at [nikhil16kulkarni@gmail.com](mailto:nikhil16kulkarni@gmail.com).


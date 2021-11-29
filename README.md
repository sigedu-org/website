# SIGEDU official website

This is the code for the official website for the ACL SIGEDU: the Association for Computational Linguistics Special Interest Group for building educational applications.  

It's currently using the [Minimal Mistakes Jekyll Theme](https://mmistakes.github.io/minimal-mistakes/).

# Table of Contents

* [Submitting a Guest Blog Post](#submitting-a-guest-blog-post)
* [Building Locally](#building-locally)
   * [Using Docker](#using-docker)
      * [Run and Go](#run-and-go)
      * [Build and Reuse](#build-and-reuse)
   * [Using Ruby](#using-ruby)
* [License](#license)

# Submitting a Guest Blog Post

1. Fork this repository into your GitHub account.
2. Make a copy of the file `_posts/YYYY-MM-DD-guest-post-title-with-hyphens.md` and name it appropriately: replace `YYYY` with the 4-digit year, `MM` with the 2-digit month, `DD` with the 2-digit date, and choose an appropriate title. Do not _use_ spaces in the name of the file!
3. Modify the file front matter (the YAML block at the top of the file):
    - Put the title of the post in the `title` field.
    - Choose a short excerpt for the post and use it for the `excerpt` field. Make sure it's enclosed in double quotes.
    - Replace `tags1` and `tags2` in the `tags` field with your topically-appropriate tags. You _must_ choose at least one tag.
    - Modify the `toc` field to read `true` instead of `false` if you have a large post with section headers. 
    - Modify the `published` field to have the value `true` instead of `false`.
    - Do _not_ modify the `author`, `author_profile`, and `categories` fields.
4. Add a news item to the main page `_pages/home.md` by copying the topmost item under the "News" section and modifying the date and content appropriately. Make sure you add the `{: .notice--info}` tag at the end of the item rather than just a `{: .notice}` tag. 
5. Submit a pull request from your fork to the SIGEDU website repository.
6. Address any comments you receive after the pull request is reviewed.
7. If your post is approved, it will be merged and will appear on the SIGEDU [blog](https://sig-edu.org/blog).

# Building Locally

GitHub Pages doesn't allow deploying changes in test mode so that they can be previewed before publishing. Therefore, if you want to see what the changes would look like, you need to build the website on your local machine. This section describes two possible options to do that:

## Using Docker

The easiest option is to use Docker since that doesn't require you to install
any dependencies yourself. 

First you need to install Docker.

- For instructions on how to install docker for Windows 10, go [here](https://docs.docker.com/docker-for-windows/install/), or for slightly older Windows computers, go [here](https://docs.docker.com/toolbox/overview/).

- For instructions on how to install docker for MacOS (at least El Capitan 10.11), go [here](https://docs.docker.com/docker-for-mac/install/), or for slightly older MacOS computers, go [here](https://docs.docker.com/toolbox/overview/)

- For instructions on how to install docker for Ubuntu (at least 14.04), go [here](https://docs.docker.com/install/linux/docker-ce/ubuntu). This link also has options for other Linux distributions.

To test your installation, just type: `docker --version` at the terminal/command prompt. A successful install will result in something that looks like: `Docker version 17.05.0-ce, build 89658be`.

Once docker is up and running, you have two options. 

### Run and Go

If you need to build the website very infrequently, this option is for you. The following command will help you run the container locally from within the root directory of the project without any intermediate steps:

```
docker run --rm --volume=$(pwd):/srv/jekyll -p 4000:4000 -it jekyll/jekyll jekyll serve --livereload
```

It will first pull down the jekyll docker image, then install all the dependencies inside the container and start up the website, all in one go.

### Build and Reuse

If you are going to need to test/build the website frequently, you probably don't want to have to wait for the gems to download and install _every_ time you run the previous command. In that case, it might be better to first build a Docker image from the included [`Dockerfile`](/Dockerfile) using the command:

```
docker build -t sigedu/website .
```

where `sigedu/website` is the docker tag for our image. After that command completes, you can use this newly created image to run the website locally at `http://localhost:4000` using the command:

```
docker run --rm -p 4000:4000 -v $(pwd):/srv/jekyll sigedu/website
```

## Using Ruby

This requires installing Ruby and various dependencies. If you are having trouble doing so, you may want to use the Docker-based solution above.

1. Install bundler: `sudo gem install bundler`. Make sure you have Ruby and Bundler versions > 2.4.
2. Check out this repository.
3. Run the gems needed by this repository: `sudo bundle install`. 
   *Note*: This step might fail when installing the `nokogiri` gem. If this happens, run `bundle config build.nokogiri --use-system-libraries` and then run `bundle install` again.
4. Start the jekyll server by running `bundle exec jekyll serve`.
5. You can then see the website at http://localhost:4000.


# License

The MIT License (MIT)

Copyright (c) 2018 Association for Computational Linguistics.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

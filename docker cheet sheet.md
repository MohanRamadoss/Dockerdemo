     
  <div id="readme" class="Box-body readme blob instapaper_body js-code-block-container">
    <article class="markdown-body entry-content p-3 p-md-6" itemprop="text"><h1><a id="user-content-docker-cheat-sheet" class="anchor" aria-hidden="true" href="#docker-cheat-sheet"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Docker Cheat Sheet</h1>
<p><strong>Want to improve this cheat sheet?  See the <a href="#contributing">Contributing</a> section!</strong></p>
<h2><a id="user-content-table-of-contents" class="anchor" aria-hidden="true" href="#table-of-contents"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Table of Contents</h2>
<ul>
<li><a href="#why-docker">Why Docker</a></li>
<li><a href="#prerequisites">Prerequisites</a></li>
<li><a href="#installation">Installation</a></li>
<li><a href="#containers">Containers</a></li>
<li><a href="#images">Images</a></li>
<li><a href="#networks">Networks</a></li>
<li><a href="#registry--repository">Registry and Repository</a></li>
<li><a href="#dockerfile">Dockerfile</a></li>
<li><a href="#layers">Layers</a></li>
<li><a href="#links">Links</a></li>
<li><a href="#volumes">Volumes</a></li>
<li><a href="#exposing-ports">Exposing Ports</a></li>
<li><a href="#best-practices">Best Practices</a></li>
<li><a href="#security">Security</a></li>
<li><a href="#tips">Tips</a></li>
<li><a href="#contributing">Contributing</a></li>
</ul>
<h2><a id="user-content-why-docker" class="anchor" aria-hidden="true" href="#why-docker"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Why Docker</h2>
<p>"With Docker, developers can build any app in any language using any toolchain. “Dockerized” apps are completely portable and can run anywhere - colleagues’ OS X and Windows laptops, QA servers running Ubuntu in the cloud, and production data center VMs running Red Hat.</p>
<p>Developers can get going quickly by starting with one of the 13,000+ apps available on Docker Hub. Docker manages and tracks changes and dependencies, making it easier for sysadmins to understand how the apps that developers build work. And with Docker Hub, developers can automate their build pipeline and share artifacts with collaborators through public or private repositories.</p>
<p>Docker helps developers build and ship higher-quality applications, faster." -- <a href="https://www.docker.com/what-docker#copy1" rel="nofollow">What is Docker</a></p>
<h2><a id="user-content-prerequisites" class="anchor" aria-hidden="true" href="#prerequisites"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Prerequisites</h2>
<p>I use <a href="https://github.com/robbyrussell/oh-my-zsh">Oh My Zsh</a> with the <a href="https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#docker">Docker plugin</a> for autocompletion of docker commands. YMMV.</p>
<h3><a id="user-content-linux" class="anchor" aria-hidden="true" href="#linux"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Linux</h3>
<p>The 3.10.x kernel is <a href="https://docs.docker.com/engine/installation/binaries/#check-kernel-dependencies" rel="nofollow">the minimum requirement</a> for Docker.</p>
<h3><a id="user-content-macos" class="anchor" aria-hidden="true" href="#macos"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>MacOS</h3>
<p>10.8 “Mountain Lion” or newer is required.</p>
<h2><a id="user-content-installation" class="anchor" aria-hidden="true" href="#installation"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Installation</h2>
<h3><a id="user-content-linux-1" class="anchor" aria-hidden="true" href="#linux-1"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Linux</h3>
<p>Quick and easy install script provided by Docker:</p>
<pre><code>curl -sSL https://get.docker.com/ | sh
</code></pre>
<p>If you're not willing to run a random shell script, please see the <a href="https://docs.docker.com/engine/installation/linux/" rel="nofollow">installation</a> instructions for your distribution.</p>
<p>If you are a complete Docker newbie, you should follow the <a href="https://docs.docker.com/engine/getstarted/" rel="nofollow">series of tutorials</a> now.</p>
<h3><a id="user-content-macos-1" class="anchor" aria-hidden="true" href="#macos-1"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>macOS</h3>
<p>Download and install <a href="https://www.docker.com/community-edition" rel="nofollow">Docker Community Edition</a>. if you have Homebrew-Cask, just type <code>brew cask install docker</code>. Or Download and install <a href="https://docs.docker.com/toolbox/overview/" rel="nofollow">Docker Toolbox</a>.  <a href="https://docs.docker.com/docker-for-mac/" rel="nofollow">Docker For Mac</a> is nice, but it's not quite as finished as the VirtualBox install.  <a href="https://docs.docker.com/docker-for-mac/docker-toolbox/" rel="nofollow">See the comparison</a>.</p>
<blockquote>
<p><strong>NOTE</strong> Docker Toolbox is legacy. You should to use Docker Community Edition, See <a href="https://docs.docker.com/toolbox/overview/" rel="nofollow">Docker Toolbox</a>.</p>
</blockquote>
<p>Once you've installed Docker Community Edition, click the docker icon in Launchpad. Then start up a container:</p>
<pre><code>docker run hello-world
</code></pre>
<p>That's it, you have a running Docker container.</p>
<p>If you are a complete Docker newbie, you should probably follow the <a href="https://docs.docker.com/engine/getstarted/" rel="nofollow">series of tutorials</a> now.</p>
<h3><a id="user-content-check-version" class="anchor" aria-hidden="true" href="#check-version"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Check Version</h3>
<p>It is very important that you always know the current version of Docker you are currently running on at any point in time. This is very helpful because you get to know what features are compatible with what you have running. This is also important because you know what containers to run from the docker store when you are trying to get template containers. That said let see how to know which version of docker we have running currently.</p>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/version/" rel="nofollow"><code>docker version</code></a> shows which version of docker you have running.</li>
</ul>
<p>Get the server version:</p>
<pre><code>$ docker version --format '{{.Server.Version}}'

1.8.0
</code></pre>
<p>You can also dump raw JSON data:</p>
<pre><code>$ docker version --format '{{json .}}'

{"Client":{"Version":"1.8.0","ApiVersion":"1.20","GitCommit":"f5bae0a","GoVersion":"go1.4.2","Os":"linux","Arch":"am"}
</code></pre>
<h2><a id="user-content-containers" class="anchor" aria-hidden="true" href="#containers"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Containers</h2>
<p><a href="http://etherealmind.com/basics-docker-containers-hypervisors-coreos/" rel="nofollow">Your basic isolated Docker process</a>. Containers are to Virtual Machines as threads are to processes. Or you can think of them as chroots on steroids.</p>
<h3><a id="user-content-lifecycle" class="anchor" aria-hidden="true" href="#lifecycle"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Lifecycle</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/create" rel="nofollow"><code>docker create</code></a> creates a container but does not start it.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/rename/" rel="nofollow"><code>docker rename</code></a> allows the container to be renamed.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/run" rel="nofollow"><code>docker run</code></a> creates and starts a container in one operation.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/rm" rel="nofollow"><code>docker rm</code></a> deletes a container.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/update/" rel="nofollow"><code>docker update</code></a> updates a container's resource limits.</li>
</ul>
<p>Normally if you run a container without options it will start and stop immediately, if you want keep it running you can use the command, <code>docker run -td container_id</code> this will use the option <code>-t</code> that will allocate a pseudo-TTY session and <code>-d</code> that will detach automatically the container (run container in background and print container ID).</p>
<p>If you want a transient container, <code>docker run --rm</code> will remove the container after it stops.</p>
<p>If you want to map a directory on the host to a docker container, <code>docker run -v $HOSTDIR:$DOCKERDIR</code>. Also see <a href="https://github.com/wsargent/docker-cheat-sheet/#volumes">Volumes</a>.</p>
<p>If you want to remove also the volumes associated with the container, the deletion of the container must include the <code>-v</code> switch like in <code>docker rm -v</code>.</p>
<p>There's also a <a href="https://docs.docker.com/engine/admin/logging/overview/" rel="nofollow">logging driver</a> available for individual containers in docker 1.10. To run docker with a custom log driver (i.e., to syslog), use <code>docker run --log-driver=syslog</code>.</p>
<p>Another useful option is <code>docker run --name yourname docker_image</code> because when you specify the <code>--name</code> inside the run command this will allow you to start and stop a container by calling it with the name the you specified when you created it.</p>
<h3><a id="user-content-starting-and-stopping" class="anchor" aria-hidden="true" href="#starting-and-stopping"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Starting and Stopping</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/start" rel="nofollow"><code>docker start</code></a> starts a container so it is running.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/stop" rel="nofollow"><code>docker stop</code></a> stops a running container.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/restart" rel="nofollow"><code>docker restart</code></a> stops and starts a container.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/pause/" rel="nofollow"><code>docker pause</code></a> pauses a running container, "freezing" it in place.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/unpause/" rel="nofollow"><code>docker unpause</code></a> will unpause a running container.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/wait" rel="nofollow"><code>docker wait</code></a> blocks until running container stops.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/kill" rel="nofollow"><code>docker kill</code></a> sends a SIGKILL to a running container.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/attach" rel="nofollow"><code>docker attach</code></a> will connect to a running container.</li>
</ul>
<p>If you want to detach from a running container, use <code>Ctrl + p, Ctrl + q</code>.
If you want to integrate a container with a <a href="https://docs.docker.com/engine/admin/host_integration/" rel="nofollow">host process manager</a>, start the daemon with <code>-r=false</code> then use <code>docker start -a</code>.</p>
<p>If you want to expose container ports through the host, see the <a href="#exposing-ports">exposing ports</a> section.</p>
<p>Restart policies on crashed docker instances are <a href="http://container42.com/2014/09/30/docker-restart-policies/" rel="nofollow">covered here</a>.</p>
<h4><a id="user-content-cpu-constraints" class="anchor" aria-hidden="true" href="#cpu-constraints"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>CPU Constraints</h4>
<p>You can limit CPU, either using a percentage of all CPUs, or by using specific cores.</p>
<p>For example, you can tell the <a href="https://docs.docker.com/engine/reference/run/#/cpu-share-constraint" rel="nofollow"><code>cpu-shares</code></a> setting.  The setting is a bit strange -- 1024 means 100% of the CPU, so if you want the container to take 50% of all CPU cores, you should specify 512.  See <a href="https://goldmann.pl/blog/2014/09/11/resource-management-in-docker/#_cpu" rel="nofollow">https://goldmann.pl/blog/2014/09/11/resource-management-in-docker/#_cpu</a> for more:</p>
<pre><code>docker run -it -c 512 agileek/cpuset-test
</code></pre>
<p>You can also only use some CPU cores using <a href="https://docs.docker.com/engine/reference/run/#/cpuset-constraint" rel="nofollow"><code>cpuset-cpus</code></a>.  See <a href="https://agileek.github.io/docker/2014/08/06/docker-cpuset/" rel="nofollow">https://agileek.github.io/docker/2014/08/06/docker-cpuset/</a> for details and some nice videos:</p>
<pre><code>docker run -it --cpuset-cpus=0,4,6 agileek/cpuset-test
</code></pre>
<p>Note that Docker can still <strong>see</strong> all of the CPUs inside the container -- it just isn't using all of them.  See <a href="https://github.com/docker/docker/issues/20770">https://github.com/docker/docker/issues/20770</a> for more details.</p>
<h4><a id="user-content-memory-constraints" class="anchor" aria-hidden="true" href="#memory-constraints"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Memory Constraints</h4>
<p>You can also set <a href="https://docs.docker.com/engine/reference/run/#/user-memory-constraints" rel="nofollow">memory constraints</a> on Docker:</p>
<pre><code>docker run -it -m 300M ubuntu:14.04 /bin/bash
</code></pre>
<h4><a id="user-content-capabilities" class="anchor" aria-hidden="true" href="#capabilities"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Capabilities</h4>
<p>Linux capabilities can be set by using <code>cap-add</code> and <code>cap-drop</code>.  See <a href="https://docs.docker.com/engine/reference/run/#/runtime-privilege-and-linux-capabilities" rel="nofollow">https://docs.docker.com/engine/reference/run/#/runtime-privilege-and-linux-capabilities</a> for details.  This should be used for greater security.</p>
<p>To mount a FUSE based filesystem, you need to combine both --cap-add and --device:</p>
<pre><code>docker run --rm -it --cap-add SYS_ADMIN --device /dev/fuse sshfs
</code></pre>
<p>Give access to a single device:</p>
<pre><code>docker run -it --device=/dev/ttyUSB0 debian bash
</code></pre>
<p>Give access to all devices:</p>
<pre><code>docker run -it --privileged -v /dev/bus/usb:/dev/bus/usb debian bash
</code></pre>
<p>More info about privileged containers <a href="https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities" rel="nofollow">here</a>.</p>
<h3><a id="user-content-info" class="anchor" aria-hidden="true" href="#info"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Info</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/ps" rel="nofollow"><code>docker ps</code></a> shows running containers.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/logs" rel="nofollow"><code>docker logs</code></a> gets logs from container.  (You can use a custom log driver, but logs is only available for <code>json-file</code> and <code>journald</code> in 1.10).</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/inspect" rel="nofollow"><code>docker inspect</code></a> looks at all the info on a container (including IP address).</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/events" rel="nofollow"><code>docker events</code></a> gets events from container.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/port" rel="nofollow"><code>docker port</code></a> shows public facing port of container.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/top" rel="nofollow"><code>docker top</code></a> shows running processes in container.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/stats" rel="nofollow"><code>docker stats</code></a> shows containers' resource usage statistics.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/diff" rel="nofollow"><code>docker diff</code></a> shows changed files in the container's FS.</li>
</ul>
<p><code>docker ps -a</code> shows running and stopped containers.</p>
<p><code>docker stats --all</code> shows a list of all containers, default shows just running.</p>
<h3><a id="user-content-import--export" class="anchor" aria-hidden="true" href="#import--export"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Import / Export</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/cp" rel="nofollow"><code>docker cp</code></a> copies files or folders between a container and the local filesystem.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/export" rel="nofollow"><code>docker export</code></a> turns container filesystem into tarball archive stream to STDOUT.</li>
</ul>
<h3><a id="user-content-executing-commands" class="anchor" aria-hidden="true" href="#executing-commands"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Executing Commands</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/exec" rel="nofollow"><code>docker exec</code></a> to execute a command in container.</li>
</ul>
<p>To enter a running container, attach a new shell process to a running container called foo, use: <code>docker exec -it foo /bin/bash</code>.</p>
<h2><a id="user-content-images" class="anchor" aria-hidden="true" href="#images"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Images</h2>
<p>Images are just <a href="https://docs.docker.com/engine/understanding-docker/#how-does-a-docker-image-work" rel="nofollow">templates for docker containers</a>.</p>
<h3><a id="user-content-lifecycle-1" class="anchor" aria-hidden="true" href="#lifecycle-1"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Lifecycle</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/images" rel="nofollow"><code>docker images</code></a> shows all images.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/import" rel="nofollow"><code>docker import</code></a> creates an image from a tarball.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/build" rel="nofollow"><code>docker build</code></a> creates image from Dockerfile.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/commit" rel="nofollow"><code>docker commit</code></a> creates image from a container, pausing it temporarily if it is running.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/rmi" rel="nofollow"><code>docker rmi</code></a> removes an image.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/load" rel="nofollow"><code>docker load</code></a> loads an image from a tar archive as STDIN, including images and tags (as of 0.7).</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/save" rel="nofollow"><code>docker save</code></a> saves an image to a tar archive stream to STDOUT with all parent layers, tags &amp; versions (as of 0.7).</li>
</ul>
<h3><a id="user-content-info-1" class="anchor" aria-hidden="true" href="#info-1"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Info</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/history" rel="nofollow"><code>docker history</code></a> shows history of image.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/tag" rel="nofollow"><code>docker tag</code></a> tags an image to a name (local or registry).</li>
</ul>
<h2><a id="user-content-checking-docker-version" class="anchor" aria-hidden="true" href="#checking-docker-version"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Checking Docker Version</h2>
<p>It is very important that you always know the current version of Docker you are currently running on at any point in time.This is very helpful because you get to know what features are compatible with what you have running. This is also important because you know what containers to run from the docker store when you are trying to get template containers. That said let see how to know what version of docker we have running currently</p>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/version/" rel="nofollow">'docker version'</a>   check what version of docker you have running</li>
</ul>
<div class="highlight highlight-source-shell"><pre><span class="pl-c"><span class="pl-c">#</span> Get the server version</span>
docker version --format <span class="pl-s"><span class="pl-pds">'</span>{{.Server.Version}}<span class="pl-pds">'</span></span></pre></div>
<p>In Docker 1.8.0 and higher, you can also dump the raw JSON data:</p>
<div class="highlight highlight-source-shell"><pre>docker version --format <span class="pl-s"><span class="pl-pds">'</span>{{json .}}<span class="pl-pds">'</span></span></pre></div>
<p>will provide the output in JSON format:</p>
<div class="highlight highlight-source-json"><pre>{<span class="pl-s"><span class="pl-pds">"</span>Client<span class="pl-pds">"</span></span>:{<span class="pl-s"><span class="pl-pds">"</span>Version<span class="pl-pds">"</span></span>:<span class="pl-s"><span class="pl-pds">"</span>1.8.0<span class="pl-pds">"</span></span>,<span class="pl-s"><span class="pl-pds">"</span>ApiVersion<span class="pl-pds">"</span></span>:<span class="pl-s"><span class="pl-pds">"</span>1.20<span class="pl-pds">"</span></span>,<span class="pl-s"><span class="pl-pds">"</span>GitCommit<span class="pl-pds">"</span></span>:<span class="pl-s"><span class="pl-pds">"</span>f5bae0a<span class="pl-pds">"</span></span>,<span class="pl-s"><span class="pl-pds">"</span>GoVersion<span class="pl-pds">"</span></span>:<span class="pl-s"><span class="pl-pds">"</span>go1.4.2<span class="pl-pds">"</span></span>,<span class="pl-s"><span class="pl-pds">"</span>Os<span class="pl-pds">"</span></span>:<span class="pl-s"><span class="pl-pds">"</span>linux<span class="pl-pds">"</span></span>,<span class="pl-s"><span class="pl-pds">"</span>Arch<span class="pl-pds">"</span></span>:<span class="pl-s"><span class="pl-pds">"</span>am<span class="pl-pds">"</span></span>}</pre></div>
<h3><a id="user-content-cleaning-up" class="anchor" aria-hidden="true" href="#cleaning-up"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Cleaning up</h3>
<p>While you can use the <code>docker rmi</code> command to remove specific images, there's a tool called <a href="https://github.com/spotify/docker-gc">docker-gc</a> that will safely clean up images that are no longer used by any containers. As of docker 1.13, <code>docker image prune</code> is also available for removing unused images. See <a href="#prune">Prune</a>.</p>
<h3><a id="user-content-loadsave-image" class="anchor" aria-hidden="true" href="#loadsave-image"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Load/Save image</h3>
<p>Load an image from file:</p>
<pre><code>docker load &lt; my_image.tar.gz
</code></pre>
<p>Save an existing image:</p>
<pre><code>docker save my_image:my_tag | gzip &gt; my_image.tar.gz
</code></pre>
<h3><a id="user-content-importexport-container" class="anchor" aria-hidden="true" href="#importexport-container"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Import/Export container</h3>
<p>Import a container as an image from file:</p>
<pre><code>cat my_container.tar.gz | docker import - my_image:my_tag
</code></pre>
<p>Export an existing container:</p>
<pre><code>docker export my_container | gzip &gt; my_container.tar.gz
</code></pre>
<h3><a id="user-content-difference-between-loading-a-saved-image-and-importing-an-exported-container-as-an-image" class="anchor" aria-hidden="true" href="#difference-between-loading-a-saved-image-and-importing-an-exported-container-as-an-image"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Difference between loading a saved image and importing an exported container as an image</h3>
<p>Loading an image using the <code>load</code> command creates a new image including its history.<br>
Importing a container as an image using the <code>import</code> command creates a new image excluding the history which results in a smaller image size compared to loading an image.</p>
<h2><a id="user-content-networks" class="anchor" aria-hidden="true" href="#networks"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Networks</h2>
<p>Docker has a <a href="https://docs.docker.com/engine/userguide/networking/" rel="nofollow">networks</a> feature. Not much is known about it, so this is a good place to expand the cheat sheet. There is a note saying that it's a good way to configure docker containers to talk to each other without using ports. See <a href="https://docs.docker.com/engine/userguide/networking/work-with-networks/" rel="nofollow">working with networks</a> for more details.</p>
<h3><a id="user-content-lifecycle-2" class="anchor" aria-hidden="true" href="#lifecycle-2"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Lifecycle</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/network_create/" rel="nofollow"><code>docker network create</code></a></li>
<li><a href="https://docs.docker.com/engine/reference/commandline/network_rm/" rel="nofollow"><code>docker network rm</code></a></li>
</ul>
<h3><a id="user-content-info-2" class="anchor" aria-hidden="true" href="#info-2"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Info</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/network_ls/" rel="nofollow"><code>docker network ls</code></a></li>
<li><a href="https://docs.docker.com/engine/reference/commandline/network_inspect/" rel="nofollow"><code>docker network inspect</code></a></li>
</ul>
<h3><a id="user-content-connection" class="anchor" aria-hidden="true" href="#connection"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Connection</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/network_connect/" rel="nofollow"><code>docker network connect</code></a></li>
<li><a href="https://docs.docker.com/engine/reference/commandline/network_disconnect/" rel="nofollow"><code>docker network disconnect</code></a></li>
</ul>
<p>You can specify a <a href="https://blog.jessfraz.com/post/ips-for-all-the-things/" rel="nofollow">specific IP address for a container</a>:</p>
<pre><code># create a new bridge network with your subnet and gateway for your ip block
docker network create --subnet 203.0.113.0/24 --gateway 203.0.113.254 iptastic

# run a nginx container with a specific ip in that block
$ docker run --rm -it --net iptastic --ip 203.0.113.2 nginx

# curl the ip from any other place (assuming this is a public ip block duh)
$ curl 203.0.113.2
</code></pre>
<h2><a id="user-content-registry--repository" class="anchor" aria-hidden="true" href="#registry--repository"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Registry &amp; Repository</h2>
<p>A repository is a <em>hosted</em> collection of tagged images that together create the file system for a container.</p>
<p>A registry is a <em>host</em> -- a server that stores repositories and provides an HTTP API for <a href="https://docs.docker.com/engine/tutorials/dockerrepos/" rel="nofollow">managing the uploading and downloading of repositories</a>.</p>
<p>Docker.com hosts its own <a href="https://hub.docker.com/" rel="nofollow">index</a> to a central registry which contains a large number of repositories.  Having said that, the central docker registry <a href="https://titanous.com/posts/docker-insecurity" rel="nofollow">does not do a good job of verifying images</a> and should be avoided if you're worried about security.</p>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/login" rel="nofollow"><code>docker login</code></a> to login to a registry.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/logout" rel="nofollow"><code>docker logout</code></a> to logout from a registry.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/search" rel="nofollow"><code>docker search</code></a> searches registry for image.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/pull" rel="nofollow"><code>docker pull</code></a> pulls an image from registry to local machine.</li>
<li><a href="https://docs.docker.com/engine/reference/commandline/push" rel="nofollow"><code>docker push</code></a> pushes an image to the registry from local machine.</li>
</ul>
<h3><a id="user-content-run-local-registry" class="anchor" aria-hidden="true" href="#run-local-registry"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Run local registry</h3>
<p>You can run a local registry by using the <a href="https://github.com/docker/distribution">docker distribution</a> project and looking at the <a href="https://github.com/docker/docker.github.io/blob/master/registry/deploying.md">local deploy</a> instructions.</p>
<p>Also see the <a href="https://groups.google.com/a/dockerproject.org/forum/#!forum/distribution" rel="nofollow">mailing list</a>.</p>
<h2><a id="user-content-dockerfile" class="anchor" aria-hidden="true" href="#dockerfile"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Dockerfile</h2>
<p><a href="https://docs.docker.com/engine/reference/builder/" rel="nofollow">The configuration file</a>. Sets up a Docker container when you run <code>docker build</code> on it. Vastly preferable to <code>docker commit</code>.</p>
<p>Here are some common text editors and their syntax highlighting modules you could use to create Dockerfiles:</p>
<ul>
<li>If you use <a href="http://jedit.org" rel="nofollow">jEdit</a>, I've put up a syntax highlighting module for <a href="https://github.com/wsargent/jedit-docker-mode">Dockerfile</a> you can use.</li>
<li><a href="https://packagecontrol.io/packages/Dockerfile%20Syntax%20Highlighting" rel="nofollow">Sublime Text 2</a></li>
<li><a href="https://atom.io/packages/language-docker" rel="nofollow">Atom</a></li>
<li><a href="https://github.com/ekalinin/Dockerfile.vim">Vim</a></li>
<li><a href="https://github.com/spotify/dockerfile-mode">Emacs</a></li>
<li><a href="https://github.com/docker/docker/tree/master/contrib/syntax/textmate">TextMate</a></li>
<li><a href="https://github.com/Microsoft/vscode-docker">VS Code</a></li>
<li>Also see <a href="https://domeide.github.io/" rel="nofollow">Docker meets the IDE</a></li>
</ul>
<h3><a id="user-content-instructions" class="anchor" aria-hidden="true" href="#instructions"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Instructions</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/builder/#dockerignore-file" rel="nofollow">.dockerignore</a></li>
<li><a href="https://docs.docker.com/engine/reference/builder/#from" rel="nofollow">FROM</a> Sets the Base Image for subsequent instructions.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#maintainer-deprecated" rel="nofollow">MAINTAINER (deprecated - use LABEL instead)</a> Set the Author field of the generated images.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#run" rel="nofollow">RUN</a> execute any commands in a new layer on top of the current image and commit the results.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#cmd" rel="nofollow">CMD</a> provide defaults for an executing container.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#expose" rel="nofollow">EXPOSE</a> informs Docker that the container listens on the specified network ports at runtime.  NOTE: does not actually make ports accessible.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#env" rel="nofollow">ENV</a> sets environment variable.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#add" rel="nofollow">ADD</a> copies new files, directories or remote file to container.  Invalidates caches. Avoid <code>ADD</code> and use <code>COPY</code> instead.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#copy" rel="nofollow">COPY</a> copies new files or directories to container.  By default this copies as root regardless of the USER/WORKDIR settings.  Use <code>--chown=&lt;user&gt;:&lt;group&gt;</code> to give ownership to another user/group.  (Same for <code>ADD</code>.)</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#entrypoint" rel="nofollow">ENTRYPOINT</a> configures a container that will run as an executable.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#volume" rel="nofollow">VOLUME</a> creates a mount point for externally mounted volumes or other containers.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#user" rel="nofollow">USER</a> sets the user name for following RUN / CMD / ENTRYPOINT commands.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#workdir" rel="nofollow">WORKDIR</a> sets the working directory.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#arg" rel="nofollow">ARG</a> defines a build-time variable.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#onbuild" rel="nofollow">ONBUILD</a> adds a trigger instruction when the image is used as the base for another build.</li>
<li><a href="https://docs.docker.com/engine/reference/builder/#stopsignal" rel="nofollow">STOPSIGNAL</a> sets the system call signal that will be sent to the container to exit.</li>
<li><a href="https://docs.docker.com/config/labels-custom-metadata/" rel="nofollow">LABEL</a> apply key/value metadata to your images, containers, or daemons.</li>
</ul>
<h3><a id="user-content-tutorial" class="anchor" aria-hidden="true" href="#tutorial"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Tutorial</h3>
<ul>
<li><a href="http://flux7.com/blogs/docker/docker-tutorial-series-part-3-automation-is-the-word-using-dockerfile/" rel="nofollow">Flux7's Dockerfile Tutorial</a></li>
</ul>
<h3><a id="user-content-examples" class="anchor" aria-hidden="true" href="#examples"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Examples</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/builder/#dockerfile-examples" rel="nofollow">Examples</a></li>
<li><a href="https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/" rel="nofollow">Best practices for writing Dockerfiles</a></li>
<li><a href="http://crosbymichael.com/" rel="nofollow">Michael Crosby</a> has some more <a href="http://crosbymichael.com/dockerfile-best-practices.html" rel="nofollow">Dockerfiles best practices</a> / <a href="http://crosbymichael.com/dockerfile-best-practices-take-2.html" rel="nofollow">take 2</a>.</li>
<li><a href="http://jonathan.bergknoff.com/journal/building-good-docker-images" rel="nofollow">Building Good Docker Images</a> / <a href="http://jonathan.bergknoff.com/journal/building-better-docker-images" rel="nofollow">Building Better Docker Images</a></li>
<li><a href="https://speakerdeck.com/garethr/managing-container-configuration-with-metadata" rel="nofollow">Managing Container Configuration with Metadata</a></li>
<li><a href="https://rock-it.pl/how-to-write-excellent-dockerfiles/" rel="nofollow">How to write excellent Dockerfiles</a></li>
</ul>
<h2><a id="user-content-layers" class="anchor" aria-hidden="true" href="#layers"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Layers</h2>
<p>The versioned filesystem in Docker is based on layers. They're like <a href="https://docs.docker.com/engine/userguide/storagedriver/imagesandcontainers/" rel="nofollow">git commits or changesets for filesystems</a>.</p>
<h2><a id="user-content-links" class="anchor" aria-hidden="true" href="#links"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Links</h2>
<p>Links are how Docker containers talk to each other <a href="https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/" rel="nofollow">through TCP/IP ports</a>. <a href="https://blogs.atlassian.com/2013/11/docker-all-the-things-at-atlassian-automation-and-wiring/" rel="nofollow">Atlassian</a> show worked examples. You can also resolve <a href="https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/#/updating-the-etchosts-file" rel="nofollow">links by hostname</a>.</p>
<p>This has been deprecated to some extent by <a href="https://docs.docker.com/network/" rel="nofollow">user-defined networks</a>.</p>
<p>NOTE: If you want containers to ONLY communicate with each other through links, start the docker daemon with <code>-icc=false</code> to disable inter process communication.</p>
<p>If you have a container with the name CONTAINER (specified by <code>docker run --name CONTAINER</code>) and in the Dockerfile, it has an exposed port:</p>
<pre><code>EXPOSE 1337
</code></pre>
<p>Then if we create another container called LINKED like so:</p>
<pre><code>docker run -d --link CONTAINER:ALIAS --name LINKED user/wordpress
</code></pre>
<p>Then the exposed ports and aliases of CONTAINER will show up in LINKED with the following environment variables:</p>
<pre><code>$ALIAS_PORT_1337_TCP_PORT
$ALIAS_PORT_1337_TCP_ADDR
</code></pre>
<p>And you can connect to it that way.</p>
<p>To delete links, use <code>docker rm --link</code>.</p>
<p>Generally, linking between docker services is a subset of "service discovery", a big problem if you're planning to use Docker at scale in production.  Please read <a href="https://www.digitalocean.com/community/tutorials/the-docker-ecosystem-service-discovery-and-distributed-configuration-stores" rel="nofollow">The Docker Ecosystem: Service Discovery and Distributed Configuration Stores</a> for more info.</p>
<h2><a id="user-content-volumes" class="anchor" aria-hidden="true" href="#volumes"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Volumes</h2>
<p>Docker volumes are <a href="https://docs.docker.com/engine/tutorials/dockervolumes/" rel="nofollow">free-floating filesystems</a>. They don't have to be connected to a particular container. You can use volumes mounted from <a href="https://medium.com/@ramangupta/why-docker-data-containers-are-good-589b3c6c749e" rel="nofollow">data-only containers</a> for portability. As of Docker 1.9.0, Docker has named volumes which replace data-only containers. Consider using named volumes to implement it rather than data containers.</p>
<h3><a id="user-content-lifecycle-3" class="anchor" aria-hidden="true" href="#lifecycle-3"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Lifecycle</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/volume_create/" rel="nofollow"><code>docker volume create</code></a></li>
<li><a href="https://docs.docker.com/engine/reference/commandline/volume_rm/" rel="nofollow"><code>docker volume rm</code></a></li>
</ul>
<h3><a id="user-content-info-3" class="anchor" aria-hidden="true" href="#info-3"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Info</h3>
<ul>
<li><a href="https://docs.docker.com/engine/reference/commandline/volume_ls/" rel="nofollow"><code>docker volume ls</code></a></li>
<li><a href="https://docs.docker.com/engine/reference/commandline/volume_inspect/" rel="nofollow"><code>docker volume inspect</code></a></li>
</ul>
<p>Volumes are useful in situations where you can't use links (which are TCP/IP only). For instance, if you need to have two docker instances communicate by leaving stuff on the filesystem.</p>
<p>You can mount them in several docker containers at once, using <code>docker run --volumes-from</code>.</p>
<p>Because volumes are isolated filesystems, they are often used to store state from computations between transient containers. That is, you can have a stateless and transient container run from a recipe, blow it away, and then have a second instance of the transient container pick up from where the last one left off.</p>
<p>See <a href="http://crosbymichael.com/advanced-docker-volumes.html" rel="nofollow">advanced volumes</a> for more details. <a href="http://container42.com/2014/11/03/docker-indepth-volumes/" rel="nofollow">Container42</a> is also helpful.</p>
<p>You can <a href="https://docs.docker.com/engine/tutorials/dockervolumes/#mount-a-host-directory-as-a-data-volume" rel="nofollow">map MacOS host directories as docker volumes</a>:</p>
<pre><code>docker run -v /Users/wsargent/myapp/src:/src
</code></pre>
<p>You can use remote NFS volumes if you're <a href="https://docs.docker.com/engine/tutorials/dockervolumes/#/mount-a-shared-storage-volume-as-a-data-volume" rel="nofollow">feeling brave</a>.</p>
<p>You may also consider running data-only containers as described <a href="http://container42.com/2013/12/16/persistent-volumes-with-docker-container-as-volume-pattern/" rel="nofollow">here</a> to provide some data portability.</p>
<p>Be aware that you can <a href="#volumes-can-be-files">mount files as volumes</a>.</p>
<h2><a id="user-content-exposing-ports" class="anchor" aria-hidden="true" href="#exposing-ports"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Exposing ports</h2>
<p>Exposing incoming ports through the host container is <a href="https://docs.docker.com/engine/reference/run/#expose-incoming-ports" rel="nofollow">fiddly but doable</a>.</p>
<p>This is done by mapping the container port to the host port (only using localhost interface) using <code>-p</code>:</p>
<pre><code>docker run -p 127.0.0.1:$HOSTPORT:$CONTAINERPORT --name CONTAINER -t someimage
</code></pre>
<p>You can tell Docker that the container listens on the specified network ports at runtime by using <a href="https://docs.docker.com/engine/reference/builder/#expose" rel="nofollow">EXPOSE</a>:</p>
<pre><code>EXPOSE &lt;CONTAINERPORT&gt;
</code></pre>
<p>Note that EXPOSE does not expose the port itself -- only <code>-p</code> will do that. To expose the container's port on your localhost's port:</p>
<pre><code>iptables -t nat -A DOCKER -p tcp --dport &lt;LOCALHOSTPORT&gt; -j DNAT --to-destination &lt;CONTAINERIP&gt;:&lt;PORT&gt;
</code></pre>
<p>If you're running Docker in Virtualbox, you then need to forward the port there as well, using <a href="https://docs.vagrantup.com/v2/networking/forwarded_ports.html" rel="nofollow">forwarded_port</a>. Define a range of ports in your Vagrantfile like this so you can dynamically map them:</p>
<pre><code>Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  ...

  (49000..49900).each do |port|
    config.vm.network :forwarded_port, :host =&gt; port, :guest =&gt; port
  end

  ...
end
</code></pre>
<p>If you forget what you mapped the port to on the host container, use <code>docker port</code> to show it:</p>
<pre><code>docker port CONTAINER $CONTAINERPORT
</code></pre>
<h2><a id="user-content-best-practices" class="anchor" aria-hidden="true" href="#best-practices"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Best Practices</h2>
<p>This is where general Docker best practices and war stories go:</p>
<ul>
<li><a href="http://gregoryszorc.com/blog/2014/10/16/the-rabbit-hole-of-using-docker-in-automated-tests/" rel="nofollow">The Rabbit Hole of Using Docker in Automated Tests</a></li>
<li><a href="https://twitter.com/bridgetkromhout" rel="nofollow">Bridget Kromhout</a> has a useful blog post on <a href="http://sysadvent.blogspot.co.uk/2014/12/day-1-docker-in-production-reality-not.html" rel="nofollow">running Docker in production</a> at Dramafever.</li>
<li>There's also a best practices <a href="http://developers.lyst.com/devops/2014/12/08/docker/" rel="nofollow">blog post</a> from Lyst.</li>
<li><a href="https://tersesystems.com/2013/11/20/building-a-development-environment-with-docker/" rel="nofollow">Building a Development Environment With Docker</a></li>
<li><a href="https://samsaffron.com/archive/2013/11/07/discourse-in-a-docker-container" rel="nofollow">Discourse in a Docker Container</a></li>
</ul>
<h2><a id="user-content-security" class="anchor" aria-hidden="true" href="#security"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Security</h2>
<p>This is where security tips about Docker go. The Docker <a href="https://docs.docker.com/engine/security/security/" rel="nofollow">security</a> page goes into more detail.</p>
<p>First things first: Docker runs as root. If you are in the <code>docker</code> group, you effectively <a href="https://web.archive.org/web/20161226211755/http://reventlov.com/advisories/using-the-docker-command-to-root-the-host" rel="nofollow">have root access</a>. If you expose the docker unix socket to a container, you are giving the container <a href="https://www.lvh.io/posts/dont-expose-the-docker-socket-not-even-to-a-container.html" rel="nofollow">root access to the host</a>.</p>
<p>Docker should not be your only defense. You should secure and harden it.</p>
<p>For an understanding of what containers leave exposed, you should read <a href="https://www.nccgroup.trust/globalassets/our-research/us/whitepapers/2016/april/ncc_group_understanding_hardening_linux_containers-1-1.pdf" rel="nofollow">Understanding and Hardening Linux Containers</a> by <a href="https://twitter.com/dyn___" rel="nofollow">Aaron Grattafiori</a>. This is a complete and comprehensive guide to the issues involved with containers, with a plethora of links and footnotes leading on to yet more useful content. The security tips following are useful if you've already hardened containers in the past, but are not a substitute for understanding.</p>
<h3><a id="user-content-security-tips" class="anchor" aria-hidden="true" href="#security-tips"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Security Tips</h3>
<p>For greatest security, you want to run Docker inside a virtual machine. This is straight from the Docker Security Team Lead -- <a href="http://www.slideshare.net/jpetazzo/linux-containers-lxc-docker-and-security" rel="nofollow">slides</a> / <a href="http://www.projectatomic.io/blog/2014/08/is-it-safe-a-look-at-docker-and-security-from-linuxcon/" rel="nofollow">notes</a>. Then, run with AppArmor / seccomp / SELinux / grsec etc to <a href="http://linux-audit.com/docker-security-best-practices-for-your-vessel-and-containers/" rel="nofollow">limit the container permissions</a>. See the <a href="https://blog.docker.com/2016/02/docker-engine-1-10-security/" rel="nofollow">Docker 1.10 security features</a> for more details.</p>
<p>Docker image ids are <a href="https://medium.com/@quayio/your-docker-image-ids-are-secrets-and-its-time-you-treated-them-that-way-f55e9f14c1a4" rel="nofollow">sensitive information</a> and should not be exposed to the outside world. Treat them like passwords.</p>
<p>See the <a href="https://github.com/konstruktoid/Docker/blob/master/Security/CheatSheet.adoc">Docker Security Cheat Sheet</a> by <a href="https://github.com/konstruktoid">Thomas Sjögren</a>: some good stuff about container hardening in there.</p>
<p>Check out the <a href="https://github.com/docker/docker-bench-security">docker bench security script</a>, download the <a href="https://blog.docker.com/2015/05/understanding-docker-security-and-best-practices/" rel="nofollow">white papers</a>.</p>
<p>Snyk's <a href="https://snyk.io/blog/10-docker-image-security-best-practices/" rel="nofollow">10 Docker Image Security Best Practices cheat sheet</a></p>
<p>You should start off by using a kernel with unstable patches for grsecurity / pax compiled in, such as <a href="https://en.wikipedia.org/wiki/Alpine_Linux" rel="nofollow">Alpine Linux</a>. If you are using grsecurity in production, you should spring for <a href="https://grsecurity.net/business_support.php" rel="nofollow">commercial support</a> for the <a href="https://grsecurity.net/announce.php" rel="nofollow">stable patches</a>, same as you would do for RedHat. It's $200 a month, which is nothing to your devops budget.</p>
<p>Since docker 1.11 you can easily limit the number of active processes running inside a container to prevent fork bombs. This requires a linux kernel &gt;= 4.3 with CGROUP_PIDS=y to be in the kernel configuration.</p>
<pre><code>docker run --pids-limit=64
</code></pre>
<p>Also available since docker 1.11 is the ability to prevent processes from gaining new privileges. This feature have been in the linux kernel since version 3.5. You can read more about it in <a href="http://www.projectatomic.io/blog/2016/03/no-new-privs-docker/" rel="nofollow">this</a> blog post.</p>
<pre><code>docker run --security-opt=no-new-privileges
</code></pre>
<p>From the <a href="http://container-solutions.com/content/uploads/2015/06/15.06.15_DockerCheatSheet_A2.pdf" rel="nofollow">Docker Security Cheat Sheet</a> (it's in PDF which makes it hard to use, so copying below) by <a href="http://container-solutions.com/is-docker-safe-for-production/" rel="nofollow">Container Solutions</a>:</p>
<p>Turn off interprocess communication with:</p>
<pre><code>docker -d --icc=false --iptables
</code></pre>
<p>Set the container to be read-only:</p>
<pre><code>docker run --read-only
</code></pre>
<p>Verify images with a hashsum:</p>
<pre><code>docker pull debian@sha256:a25306f3850e1bd44541976aa7b5fd0a29be
</code></pre>
<p>Set volumes to be read only:</p>
<pre><code>docker run -v $(pwd)/secrets:/secrets:ro debian
</code></pre>
<p>Define and run a user in your Dockerfile so you don't run as root inside the container:</p>
<pre><code>RUN groupadd -r user &amp;&amp; useradd -r -g user user
USER user
</code></pre>
<h3><a id="user-content-user-namespaces" class="anchor" aria-hidden="true" href="#user-namespaces"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>User Namespaces</h3>
<p>There's also work on <a href="https://s3hh.wordpress.com/2013/07/19/creating-and-using-containers-without-privilege/" rel="nofollow">user namespaces</a> -- it is in 1.10 but is not enabled by default.</p>
<p>To enable user namespaces ("remap the userns") in Ubuntu 15.10, <a href="https://raesene.github.io/blog/2016/02/04/Docker-User-Namespaces/" rel="nofollow">follow the blog example</a>.</p>
<h3><a id="user-content-security-videos" class="anchor" aria-hidden="true" href="#security-videos"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Security Videos</h3>
<ul>
<li><a href="https://youtu.be/04LOuMgNj9U" rel="nofollow">Using Docker Safely</a></li>
<li><a href="https://youtu.be/KmxOXmPhZbk" rel="nofollow">Securing your applications using Docker</a></li>
<li><a href="https://youtu.be/a9lE9Urr6AQ" rel="nofollow">Container security: Do containers actually contain?</a></li>
<li><a href="https://www.youtube.com/watch?v=iN6QbszB1R8" rel="nofollow">Linux Containers: Future or Fantasy?</a></li>
</ul>
<h3><a id="user-content-security-roadmap" class="anchor" aria-hidden="true" href="#security-roadmap"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Security Roadmap</h3>
<p>The Docker roadmap talks about <a href="https://github.com/docker/docker/blob/master/ROADMAP.md#11-security">seccomp support</a>.
There is an AppArmor policy generator called <a href="https://github.com/jfrazelle/bane">bane</a>, and they're working on <a href="https://github.com/docker/docker/issues/17142">security profiles</a>.</p>
<h2><a id="user-content-tips" class="anchor" aria-hidden="true" href="#tips"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Tips</h2>
<p>Sources:</p>
<ul>
<li><a href="http://sssslide.com/speakerdeck.com/bmorearty/15-docker-tips-in-5-minutes" rel="nofollow">15 Docker Tips in 5 minutes</a></li>
<li><a href="https://codefresh.io/blog/everyday-hacks-docker/" rel="nofollow">CodeFresh Everyday Hacks Docker</a></li>
</ul>
<h3><a id="user-content-prune" class="anchor" aria-hidden="true" href="#prune"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Prune</h3>
<p>The new <a href="https://github.com/docker/docker/pull/26108">Data Management Commands</a> have landed as of Docker 1.13:</p>
<ul>
<li><code>docker system prune</code></li>
<li><code>docker volume prune</code></li>
<li><code>docker network prune</code></li>
<li><code>docker container prune</code></li>
<li><code>docker image prune</code></li>
</ul>
<h3><a id="user-content-df" class="anchor" aria-hidden="true" href="#df"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>df</h3>
<p><code>docker system df</code> presents a summary of the space currently used by different docker objects.</p>
<h3><a id="user-content-heredoc-docker-container" class="anchor" aria-hidden="true" href="#heredoc-docker-container"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Heredoc Docker Container</h3>
<pre><code>docker build -t htop - &lt;&lt; EOF
FROM alpine
RUN apk --no-cache add htop
EOF
</code></pre>
<h3><a id="user-content-last-ids" class="anchor" aria-hidden="true" href="#last-ids"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Last Ids</h3>
<pre><code>alias dl='docker ps -l -q'
docker run ubuntu echo hello world
docker commit $(dl) helloworld
</code></pre>
<h3><a id="user-content-commit-with-command-needs-dockerfile" class="anchor" aria-hidden="true" href="#commit-with-command-needs-dockerfile"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Commit with command (needs Dockerfile)</h3>
<pre><code>docker commit -run='{"Cmd":["postgres", "-too -many -opts"]}' $(dl) postgres
</code></pre>
<h3><a id="user-content-get-ip-address" class="anchor" aria-hidden="true" href="#get-ip-address"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Get IP address</h3>
<pre><code>docker inspect $(dl) | grep -wm1 IPAddress | cut -d '"' -f 4
</code></pre>
<p>or with <a href="https://stedolan.github.io/jq/" rel="nofollow">jq</a> installed:</p>
<pre><code>docker inspect $(dl) | jq -r '.[0].NetworkSettings.IPAddress'
</code></pre>
<p>or using a <a href="https://docs.docker.com/engine/reference/commandline/inspect" rel="nofollow">go template</a>:</p>
<pre><code>docker inspect -f '{{ .NetworkSettings.IPAddress }}' &lt;container_name&gt;
</code></pre>
<p>or when building an image from Dockerfile, when you want to pass in a build argument:</p>
<pre><code>DOCKER_HOST_IP=`ifconfig | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" | grep -v 127.0.0.1 | awk '{ print $2 }' | cut -f2 -d: | head -n1`
echo DOCKER_HOST_IP = $DOCKER_HOST_IP
docker build \
  --build-arg ARTIFACTORY_ADDRESS=$DOCKER_HOST_IP 
  -t sometag \
  some-directory/
</code></pre>
<h3><a id="user-content-get-port-mapping" class="anchor" aria-hidden="true" href="#get-port-mapping"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Get port mapping</h3>
<pre><code>docker inspect -f '{{range $p, $conf := .NetworkSettings.Ports}} {{$p}} -&gt; {{(index $conf 0).HostPort}} {{end}}' &lt;containername&gt;
</code></pre>
<h3><a id="user-content-find-containers-by-regular-expression" class="anchor" aria-hidden="true" href="#find-containers-by-regular-expression"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Find containers by regular expression</h3>
<pre><code>for i in $(docker ps -a | grep "REGEXP_PATTERN" | cut -f1 -d" "); do echo $i; done
</code></pre>
<h3><a id="user-content-get-environment-settings" class="anchor" aria-hidden="true" href="#get-environment-settings"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Get Environment Settings</h3>
<pre><code>docker run --rm ubuntu env
</code></pre>
<h3><a id="user-content-kill-running-containers" class="anchor" aria-hidden="true" href="#kill-running-containers"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Kill running containers</h3>
<pre><code>docker kill $(docker ps -q)
</code></pre>
<h3><a id="user-content-delete-all-containers-force-running-or-stopped-containers" class="anchor" aria-hidden="true" href="#delete-all-containers-force-running-or-stopped-containers"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Delete all containers (force!! running or stopped containers)</h3>
<pre><code>docker rm -f $(docker ps -qa)
</code></pre>
<h3><a id="user-content-delete-old-containers" class="anchor" aria-hidden="true" href="#delete-old-containers"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Delete old containers</h3>
<pre><code>docker ps -a | grep 'weeks ago' | awk '{print $1}' | xargs docker rm
</code></pre>
<h3><a id="user-content-delete-stopped-containers" class="anchor" aria-hidden="true" href="#delete-stopped-containers"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Delete stopped containers</h3>
<pre><code>docker rm -v $(docker ps -a -q -f status=exited)
</code></pre>
<h3><a id="user-content-delete-containers-after-stopping" class="anchor" aria-hidden="true" href="#delete-containers-after-stopping"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Delete containers after stopping</h3>
<pre><code>docker stop $(docker ps -aq) &amp;&amp; docker rm -v $(docker ps -aq)
</code></pre>
<h3><a id="user-content-delete-dangling-images" class="anchor" aria-hidden="true" href="#delete-dangling-images"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Delete dangling images</h3>
<pre><code>docker rmi $(docker images -q -f dangling=true)
</code></pre>
<h3><a id="user-content-delete-all-images" class="anchor" aria-hidden="true" href="#delete-all-images"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Delete all images</h3>
<pre><code>docker rmi $(docker images -q)
</code></pre>
<h3><a id="user-content-delete-dangling-volumes" class="anchor" aria-hidden="true" href="#delete-dangling-volumes"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Delete dangling volumes</h3>
<p>As of Docker 1.9:</p>
<pre><code>docker volume rm $(docker volume ls -q -f dangling=true)
</code></pre>
<p>In 1.9.0, the filter <code>dangling=false</code> does <em>not</em> work - it is ignored and will list all volumes.</p>
<h3><a id="user-content-show-image-dependencies" class="anchor" aria-hidden="true" href="#show-image-dependencies"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Show image dependencies</h3>
<pre><code>docker images -viz | dot -Tpng -o docker.png
</code></pre>
<h3><a id="user-content-slimming-down-docker-containers" class="anchor" aria-hidden="true" href="#slimming-down-docker-containers"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Slimming down Docker containers</h3>
<ul>
<li>Cleaning APT in a RUN layer</li>
</ul>
<p>This should be done in the same layer as other apt commands.
Otherwise, the previous layers still persist the original information and your images will still be fat.</p>
<pre><code>RUN {apt commands} \
  &amp;&amp; apt-get clean \
  &amp;&amp; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
</code></pre>
<ul>
<li>Flatten an image</li>
</ul>
<pre><code>ID=$(docker run -d image-name /bin/bash)
docker export $ID | docker import – flat-image-name
</code></pre>
<ul>
<li>For backup</li>
</ul>
<pre><code>ID=$(docker run -d image-name /bin/bash)
(docker export $ID | gzip -c &gt; image.tgz)
gzip -dc image.tgz | docker import - flat-image-name
</code></pre>
<h3><a id="user-content-monitor-system-resource-utilization-for-running-containers" class="anchor" aria-hidden="true" href="#monitor-system-resource-utilization-for-running-containers"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Monitor system resource utilization for running containers</h3>
<p>To check the CPU, memory, and network I/O usage of a single container, you can use:</p>
<pre><code>docker stats &lt;container&gt;
</code></pre>
<p>For all containers listed by id:</p>
<pre><code>docker stats $(docker ps -q)
</code></pre>
<p>For all containers listed by name:</p>
<pre><code>docker stats $(docker ps --format '{{.Names}}')
</code></pre>
<p>For all containers listed by image:</p>
<pre><code>docker ps -a -f ancestor=ubuntu
</code></pre>
<p>Remove all untagged images:</p>
<pre><code>docker rmi $(docker images | grep “^” | awk '{split($0,a," "); print a[3]}')
</code></pre>
<p>Remove container by a regular expression:</p>
<pre><code>docker ps -a | grep wildfly | awk '{print $1}' | xargs docker rm -f
</code></pre>
<p>Remove all exited containers:</p>
<pre><code>docker rm -f $(docker ps -a | grep Exit | awk '{ print $1 }')
</code></pre>
<h3><a id="user-content-volumes-can-be-files" class="anchor" aria-hidden="true" href="#volumes-can-be-files"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Volumes can be files</h3>
<p>Be aware that you can mount files as volumes. For example you can inject a configuration file like this:</p>
<div class="highlight highlight-source-shell"><pre><span class="pl-c"><span class="pl-c">#</span> copy file from container</span>
docker run --rm httpd cat /usr/local/apache2/conf/httpd.conf <span class="pl-k">&gt;</span> httpd.conf

<span class="pl-c"><span class="pl-c">#</span> edit file</span>
vim httpd.conf

<span class="pl-c"><span class="pl-c">#</span> start container with modified configuration</span>
docker run --rm -it -v <span class="pl-s"><span class="pl-pds">"</span><span class="pl-smi">$PWD</span>/httpd.conf:/usr/local/apache2/conf/httpd.conf:ro<span class="pl-pds">"</span></span> -p <span class="pl-s"><span class="pl-pds">"</span>80:80<span class="pl-pds">"</span></span> httpd</pre></div>
<h2><a id="user-content-contributing" class="anchor" aria-hidden="true" href="#contributing"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Contributing</h2>

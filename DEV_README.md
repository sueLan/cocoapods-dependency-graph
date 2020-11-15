
### How to dev 

1. learn [Getting Started with CocoaPods Plugin Development](https://medium.com/@vladkorzun/getting-started-with-cocoapods-plugin-development-86cd55bee1b3)

2. change code 
3. build gemspec
3.1. If you add a new file, make sure that file is added in git before building. Because in the `gemspec`, we use 
    ```
    spec.files         = `git ls-files`.split($/)
    ```
Now, you can build the `cocoapods-dependency-graph`
```
~> cd cocoapods-dependency-graph
~> gem build cocoapods-dependency-graph.gemspec
```
3.2. Go to  `~/.gem/ruby/${version}/gems/cocoapods-dependency-graph-0.0.1/lib/cocoapods-dependency-graph/`,  check if your file is packed into the plugin bundle. 
4. install cocoapods-dependency-graph 

```
~> gem install cocoapods-dependency-graph  --user-install
~> pod plugins installed
```

5. go to the demo folder, we already add `plugin 'cocoapods-dependency-graph'` in the `Podfile`. 

```
~> cd ../demo/DependencyGraphDemo
~> pod install --verbose 
```

### Release new version 
1. update `VERSION` in `gem_version.rb` 
2. build, `gem build cocoapods-dependency-graph.gemspec`. 
3. publish, `gem push cocoapods-dependency-graph-#{version}.gem`   

### Doc for cocoapods 

Check the doc and API in https://rubydoc.info/gems/cocoapods/Pod

### How to dev 

1. learn [Getting Started with CocoaPods Plugin Development](https://medium.com/@vladkorzun/getting-started-with-cocoapods-plugin-development-86cd55bee1b3)

2. change code 
3. build gemspec
If you add a new file, make sure that file is added in git before building gemspec. 
```
~> cd cocoapods-dependency-graph
~> gem build cocoapods-dependency-graph.gemspec
```

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

### Doc for cocoapods 

Check the doc and API in https://rubydoc.info/gems/cocoapods/Pod
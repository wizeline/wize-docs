# Write Good Tests/Specs

When a given test/example fails, [Mocha](https://github.com/mochajs/mocha) (and similar tools)
prints all of the strings to identify the test. A common practice is to write those labels so
that they form a 'sentence' &mdash; _e.g._, if writing examples for `feed_model` and starting
with its `getProduct()` method...

```
describe("feed_model", function () {
  describe(".getProduct()", function () {
    var tokenId, product;
    
    context("with a valid tokenId"), function() {
      beforeEach(function() {
        tokenId = "some valid tokenId value";
      });
      
      context("and product", function () {
        beforeEach(function() {
          product = "some valid product value";
        });
        
        it("returns a valid response", function (done) {
          // call feed_model.getProduct(tokenId, product)
          // and check the return/results
        }
      }
      
      context("and an invalid product", function () {
        beforeEach(function() {
          product = "some invalid product value";
        });
        
        it("returns an error", function (done) {
          // call feed_model.getProduct(tokenId, product)
          // and check the return/results
        }
      }
```

it would display
```
feed_model
  .getProduct()
    with a valid tokenId
      and product
        returns a valid response
      and an invalid product
        returns an error
```
while running (some think it looks like a "conversation") and

```
feed_model .getProduct() with a valid tokenId and product returns a valid response
```
if that example fails.

Many people like to use...
- `describe` for the thing(s) being tested &mdash; the "what"s
- `context` for conditions of the test(s) &mdash; _e.g._, `"given ..."`, `"when ..."`, or `"with ..."`
- `it` for the verb and expected behavior (_e.g._, it refers back to the last `describe()`d thing)
- [expect()](http://chaijs.com/api/bdd/)
  - [rather than `.should`](http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/) (in part because it does not require 'monkey-patching' `.should` onto classes/prototypes)
(possibly over-writing an existing `.should`...)
  - rather than `assert`

Sometimes `describe`s get nested in `context`(s) &mdash; _e.g._, if it were useful to focus on the `user`
object passed to the `getProduct()` callback...
```
describe("feed_model", function () {
  describe(".getProduct()", function () {
    context("given valid tokenId and product parameters", function () {
      describe("the user object located", function () {
        var user;
        beforeEach(function () {
          // call feed_model.getProduct() and save/copy the user value
        });
        it("has a name", function (done) {
          expect(user.name).not.to.be.null;
```
(yah, the sentence structure can get a little 'strained,' but it still tells you where the example is looking)

Though centered on [RSpec](https://www.relishapp.com/rspec), http://betterspecs.org/ has some suggestions.

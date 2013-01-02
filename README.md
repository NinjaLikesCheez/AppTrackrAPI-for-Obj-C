## Obsolete ##
On December 30th, apptrackr sadly closed it's doors, this interaction library will no longer work. Thanks.
## ##

# AppTrackrAPI-for-Obj-C #
## Version 2.0.2 ##

### How to make a request ###

    NSDictionary *arguments = [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithInt:310749044], @"app_id", nil];
    
    Link *link = [[Link alloc] initWithArgumentsBlock:arguments];
    NSDictionary *returnData = [link get];

### Links ###

Uses the apptrackr API - documentation here; [apptrackr API](http://hackulo.us/forums/index.php?/topic/52727-apptrackr-api/)

Uses json-framework by Stig - [json-framework](https://github.com/stig/json-framework/)

### Thanks ###

splintr - some code; APIStatusCode Class; testing.

dissident - making the apptrackr API ;-)

[Hackulous](http://hackulo.us) :: [apptrackr](http://apptrackr.cd/)

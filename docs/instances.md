# instances Module


<br />

## Table of Contents
1. [\<mastodon-account\>](#mastodon-account)
2. [\<mastodon-emoji\>](#mastodon-emoji)
3. [\<mastodon-field\>](#mastodon-field)
4. [\<mastodon-instance-stats\>](#mastodon-instance-stats)
5. [\<mastodon-instance-urls\>](#mastodon-instance-urls)
6. [\<mastodon-instance\>](#mastodon-instance)
7. [masto-account-acct](#masto-account-acct)
8. [masto-account-avatar](#masto-account-avatar)
9. [masto-account-avatar-static](#masto-account-avatar-static)
10. [masto-account-bot?](#masto-account-bot)
11. [masto-account-created-at](#masto-account-created-at)
12. [masto-account-discoverable?](#masto-account-discoverable)
13. [masto-account-display-name](#masto-account-display-name)
14. [masto-account-emojis](#masto-account-emojis)
15. [masto-account-fields](#masto-account-fields)
16. [masto-account-followers-count](#masto-account-followers-count)
17. [masto-account-following-count](#masto-account-following-count)
18. [masto-account-group?](#masto-account-group)
19. [masto-account-header](#masto-account-header)
20. [masto-account-header-static](#masto-account-header-static)
21. [masto-account-id](#masto-account-id)
22. [masto-account-last-status-at](#masto-account-last-status-at)
23. [masto-account-locked?](#masto-account-locked)
24. [masto-account-moved](#masto-account-moved)
25. [masto-account-note](#masto-account-note)
26. [masto-account-statuses-count](#masto-account-statuses-count)
27. [masto-account-url](#masto-account-url)
28. [masto-account-username](#masto-account-username)
29. [masto-account?](#masto-account)
30. [masto-emoji-shortcode](#masto-emoji-shortcode)
31. [masto-emoji-static-url](#masto-emoji-static-url)
32. [masto-emoji-url](#masto-emoji-url)
33. [masto-emoji-visible-in-picker?](#masto-emoji-visible-in-picker)
34. [masto-emoji?](#masto-emoji)
35. [masto-field-name](#masto-field-name)
36. [masto-field-value](#masto-field-value)
37. [masto-field-verified-at](#masto-field-verified-at)
38. [masto-field?](#masto-field)
39. [masto-instance-contact-account](#masto-instance-contact-account)
40. [masto-instance-description](#masto-instance-description)
41. [masto-instance-email](#masto-instance-email)
42. [masto-instance-languages](#masto-instance-languages)
43. [masto-instance-short-description](#masto-instance-short-description)
44. [masto-instance-stats](#masto-instance-stats)
45. [masto-instance-stats-domain-count](#masto-instance-stats-domain-count)
46. [masto-instance-stats-status-count](#masto-instance-stats-status-count)
47. [masto-instance-stats-user-count](#masto-instance-stats-user-count)
48. [masto-instance-stats?](#masto-instance-stats)
49. [masto-instance-thumbnail](#masto-instance-thumbnail)
50. [masto-instance-title](#masto-instance-title)
51. [masto-instance-uri](#masto-instance-uri)
52. [masto-instance-urls](#masto-instance-urls)
53. [masto-instance-urls-streaming-api](#masto-instance-urls-streaming-api)
54. [masto-instance-urls?](#masto-instance-urls)
55. [masto-instance-version](#masto-instance-version)
56. [masto-instance?](#masto-instance)
57. [masto-instance-info](#masto-instance-info)


<br />

### \<mastodon-account\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `id` <br />
> `username` <br />
> `acct` <br />
> `displayName` <br />
> `locked` <br />
> `bot` <br />
> `discoverable` <br />
> `group` <br />
> `createdAt` <br />
> `followersCount` <br />
> `followingCount` <br />
> `statusesCount` <br />
> `lastStatusAt` <br />
> `note` <br />
> `url` <br />
> `avatar` <br />
> `avatarStatic` <br />
> `header` <br />
> `headerStatic` <br />
> `emojis` <br />
> `moved` <br />
> `fields` <br />

<br />

### \<mastodon-emoji\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `shortcode` <br />
> `staticURL` <br />
> `url` <br />
> `visibleInPicker` <br />

<br />

### \<mastodon-field\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `name` <br />
> `value` <br />
> `verifiedAt` <br />

<br />

### \<mastodon-instance-stats\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `userCount` <br />
> `statusCount` <br />
> `domainCount` <br />

<br />

### \<mastodon-instance-urls\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `streamingAPI` <br />

<br />

### \<mastodon-instance\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `uri` <br />
> `title` <br />
> `shortDescription` <br />
> `description` <br />
> `email` <br />
> `version` <br />
> `thumbnail` <br />
> `urls` <br />
> `stats` <br />
> `languages` <br />
> `contactAccount` <br />

<br />

### masto-account-acct
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-avatar
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-avatar-static
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-bot?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-created-at
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-discoverable?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-display-name
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-emojis
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-fields
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-followers-count
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-following-count
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-group?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-header
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-header-static
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-last-status-at
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-locked?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-moved
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-note
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-statuses-count
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account-username
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-account?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-emoji-shortcode
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-emoji-static-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-emoji-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-emoji-visible-in-picker?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-emoji?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-field-name
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-field-value
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-field-verified-at
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-field?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-instance-contact-account
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-description
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-email
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-languages
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-short-description
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-stats
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-stats-domain-count
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-stats-status-count
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-stats-user-count
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-stats?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-instance-thumbnail
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-title
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-uri
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-urls
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-urls-streaming-api
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance-urls?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-instance-version
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-instance?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-instance-info
##### Summary
Retrieve information about a particular instance.

`domainOrApp` can be the instance domain as a String or a
[`<mastodon-instance-application>`](auth.md#mastodon-instance-application), whose associated `domain` will be used instead.

Domains can include or lack the preceding "https://"; this function will add
one, if needed.

This function will return a [`<mastodon-instance>`](#mastodon-instance) record.

Documentation for this API call can be found [here](https://docs.joinmastodon.org/methods/instance/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `domainOrApp` <br />

<br />


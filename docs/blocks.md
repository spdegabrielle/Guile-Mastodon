# blocks Module


<br />

## Table of Contents
1. [\<mastodon-account\>](#mastodon-account)
2. [\<mastodon-emoji\>](#mastodon-emoji)
3. [\<mastodon-field\>](#mastodon-field)
4. [\<mastodon-pagination-object\>](#mastodon-pagination-object)
5. [\<mastodon-relationship\>](#mastodon-relationship)
6. [masto-account-acct](#masto-account-acct)
7. [masto-account-avatar](#masto-account-avatar)
8. [masto-account-avatar-static](#masto-account-avatar-static)
9. [masto-account-bot?](#masto-account-bot)
10. [masto-account-created-at](#masto-account-created-at)
11. [masto-account-discoverable?](#masto-account-discoverable)
12. [masto-account-display-name](#masto-account-display-name)
13. [masto-account-emojis](#masto-account-emojis)
14. [masto-account-fields](#masto-account-fields)
15. [masto-account-followers-count](#masto-account-followers-count)
16. [masto-account-following-count](#masto-account-following-count)
17. [masto-account-group?](#masto-account-group)
18. [masto-account-header](#masto-account-header)
19. [masto-account-header-static](#masto-account-header-static)
20. [masto-account-id](#masto-account-id)
21. [masto-account-last-status-at](#masto-account-last-status-at)
22. [masto-account-locked?](#masto-account-locked)
23. [masto-account-moved](#masto-account-moved)
24. [masto-account-note](#masto-account-note)
25. [masto-account-statuses-count](#masto-account-statuses-count)
26. [masto-account-url](#masto-account-url)
27. [masto-account-username](#masto-account-username)
28. [masto-account?](#masto-account)
29. [masto-emoji-shortcode](#masto-emoji-shortcode)
30. [masto-emoji-static-url](#masto-emoji-static-url)
31. [masto-emoji-url](#masto-emoji-url)
32. [masto-emoji-visible-in-picker?](#masto-emoji-visible-in-picker)
33. [masto-emoji?](#masto-emoji)
34. [masto-field-name](#masto-field-name)
35. [masto-field-value](#masto-field-value)
36. [masto-field-verified-at](#masto-field-verified-at)
37. [masto-field?](#masto-field)
38. [masto-page-next](#masto-page-next)
39. [masto-page-objects](#masto-page-objects)
40. [masto-page-prev](#masto-page-prev)
41. [masto-page?](#masto-page)
42. [masto-relationship-blocking](#masto-relationship-blocking)
43. [masto-relationship-domain-blocking](#masto-relationship-domain-blocking)
44. [masto-relationship-endorsed](#masto-relationship-endorsed)
45. [masto-relationship-followed-by](#masto-relationship-followed-by)
46. [masto-relationship-following](#masto-relationship-following)
47. [masto-relationship-id](#masto-relationship-id)
48. [masto-relationship-muting](#masto-relationship-muting)
49. [masto-relationship-muting-notifications](#masto-relationship-muting-notifications)
50. [masto-relationship-requested](#masto-relationship-requested)
51. [masto-relationship-showing-reblogs](#masto-relationship-showing-reblogs)
52. [masto-relationship?](#masto-relationship)
53. [masto-block-account](#masto-block-account)
54. [masto-blocks-all](#masto-blocks-all)
55. [masto-unblock-account](#masto-unblock-account)


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

### \<mastodon-pagination-object\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `objectCollection` <br />
> `prevURL` <br />
> `prevPage` <br />
> `nextURL` <br />
> `nextPage` <br />
> `http-call` <br />
> `generate-fn` <br />

<br />

### \<mastodon-relationship\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `id` <br />
> `following` <br />
> `followedBy` <br />
> `blocking` <br />
> `muting` <br />
> `mutingNotifications` <br />
> `requested` <br />
> `domainBlocking` <br />
> `showingReblogs` <br />
> `endorsed` <br />

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

### masto-page-next
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `page` <br />

<br />

### masto-page-objects
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-page-prev
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `page` <br />

<br />

### masto-page?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-relationship-blocking
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-relationship-domain-blocking
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-relationship-endorsed
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-relationship-followed-by
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-relationship-following
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-relationship-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-relationship-muting
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-relationship-muting-notifications
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-relationship-requested
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-relationship-showing-reblogs
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-relationship?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-block-account
##### Summary
Block an existing Fediverse account for the user tied to `mastoApp`.

`accountID` refers to the ID of the user you wish to block.

A [`<mastodon-relationship>`](#mastodon-relationship) is returned.

Find the original documentation within [this page](https://docs.joinmastodon.org/methods/accounts/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `accountID` <br />

<br />

### masto-blocks-all
##### Summary
Retrieve all blocks associated with the user tied to `mastoApp`.

If no `limit` value is provided, the value 40 is used.

A [`<mastodon-pagination-object>`](#mastodon-pagination-object) is returned,
consisting of the [`<mastodon-account>`](#mastodon-account)s that the user
has blocked.

Find the original documentation [here](https://docs.joinmastodon.org/methods/accounts/blocks/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#c5f015](https://placehold.it/15/c5f015/000000?text=+) `[limit]` <br />

<br />

### masto-unblock-account
##### Summary
Unblock an existing Fediverse account for the user tied to `mastoApp`.

`accountID` refers to the ID of the user you wish to unblock.

A [`<mastodon-relationship>`](#mastodon-relationship) is returned.

Find the original documentation within [this page](https://docs.joinmastodon.org/methods/accounts/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `accountID` <br />

<br />


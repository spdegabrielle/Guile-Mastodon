# notifications Module


<br />

## Table of Contents
1. [\<mastodon-account\>](#mastodon-account)
2. [\<mastodon-application\>](#mastodon-application)
3. [\<mastodon-attachment\>](#mastodon-attachment)
4. [\<mastodon-card\>](#mastodon-card)
5. [\<mastodon-emoji\>](#mastodon-emoji)
6. [\<mastodon-field\>](#mastodon-field)
7. [\<mastodon-history\>](#mastodon-history)
8. [\<mastodon-mention\>](#mastodon-mention)
9. [\<mastodon-meta-focus\>](#mastodon-meta-focus)
10. [\<mastodon-meta-subtree\>](#mastodon-meta-subtree)
11. [\<mastodon-meta\>](#mastodon-meta)
12. [\<mastodon-notification\>](#mastodon-notification)
13. [\<mastodon-pagination-object\>](#mastodon-pagination-object)
14. [\<mastodon-poll\>](#mastodon-poll)
15. [\<mastodon-status\>](#mastodon-status)
16. [\<mastodon-tag\>](#mastodon-tag)
17. [\<mastodon-web-push-subscription-alerts\>](#mastodon-web-push-subscription-alerts)
18. [\<mastodon-web-push-subscription\>](#mastodon-web-push-subscription)
19. [masto-account-acct](#masto-account-acct)
20. [masto-account-avatar](#masto-account-avatar)
21. [masto-account-avatar-static](#masto-account-avatar-static)
22. [masto-account-bot?](#masto-account-bot)
23. [masto-account-created-at](#masto-account-created-at)
24. [masto-account-discoverable?](#masto-account-discoverable)
25. [masto-account-display-name](#masto-account-display-name)
26. [masto-account-emojis](#masto-account-emojis)
27. [masto-account-fields](#masto-account-fields)
28. [masto-account-followers-count](#masto-account-followers-count)
29. [masto-account-following-count](#masto-account-following-count)
30. [masto-account-group?](#masto-account-group)
31. [masto-account-header](#masto-account-header)
32. [masto-account-header-static](#masto-account-header-static)
33. [masto-account-id](#masto-account-id)
34. [masto-account-last-status-at](#masto-account-last-status-at)
35. [masto-account-locked?](#masto-account-locked)
36. [masto-account-moved](#masto-account-moved)
37. [masto-account-note](#masto-account-note)
38. [masto-account-statuses-count](#masto-account-statuses-count)
39. [masto-account-url](#masto-account-url)
40. [masto-account-username](#masto-account-username)
41. [masto-account?](#masto-account)
42. [masto-application-name](#masto-application-name)
43. [masto-application-website](#masto-application-website)
44. [masto-application?](#masto-application)
45. [masto-attachment-blurhash](#masto-attachment-blurhash)
46. [masto-attachment-description](#masto-attachment-description)
47. [masto-attachment-id](#masto-attachment-id)
48. [masto-attachment-meta](#masto-attachment-meta)
49. [masto-attachment-preview-url](#masto-attachment-preview-url)
50. [masto-attachment-remote-url](#masto-attachment-remote-url)
51. [masto-attachment-text-url](#masto-attachment-text-url)
52. [masto-attachment-type](#masto-attachment-type)
53. [masto-attachment-url](#masto-attachment-url)
54. [masto-attachment?](#masto-attachment)
55. [masto-card-author-name](#masto-card-author-name)
56. [masto-card-author-url](#masto-card-author-url)
57. [masto-card-description](#masto-card-description)
58. [masto-card-height](#masto-card-height)
59. [masto-card-html](#masto-card-html)
60. [masto-card-image](#masto-card-image)
61. [masto-card-provider-name](#masto-card-provider-name)
62. [masto-card-provider-url](#masto-card-provider-url)
63. [masto-card-title](#masto-card-title)
64. [masto-card-type](#masto-card-type)
65. [masto-card-url](#masto-card-url)
66. [masto-card-width](#masto-card-width)
67. [masto-card?](#masto-card)
68. [masto-emoji-shortcode](#masto-emoji-shortcode)
69. [masto-emoji-static-url](#masto-emoji-static-url)
70. [masto-emoji-url](#masto-emoji-url)
71. [masto-emoji-visible-in-picker?](#masto-emoji-visible-in-picker)
72. [masto-emoji?](#masto-emoji)
73. [masto-field-name](#masto-field-name)
74. [masto-field-value](#masto-field-value)
75. [masto-field-verified-at](#masto-field-verified-at)
76. [masto-field?](#masto-field)
77. [masto-history-accounts](#masto-history-accounts)
78. [masto-history-day](#masto-history-day)
79. [masto-history-uses](#masto-history-uses)
80. [masto-history?](#masto-history)
81. [masto-mention-acct](#masto-mention-acct)
82. [masto-mention-id](#masto-mention-id)
83. [masto-mention-url](#masto-mention-url)
84. [masto-mention-username](#masto-mention-username)
85. [masto-mention?](#masto-mention)
86. [masto-meta-focus](#masto-meta-focus)
87. [masto-meta-focus-x](#masto-meta-focus-x)
88. [masto-meta-focus-y](#masto-meta-focus-y)
89. [masto-meta-focus?](#masto-meta-focus)
90. [masto-meta-original](#masto-meta-original)
91. [masto-meta-small](#masto-meta-small)
92. [masto-meta-subtree-aspect](#masto-meta-subtree-aspect)
93. [masto-meta-subtree-bitrate](#masto-meta-subtree-bitrate)
94. [masto-meta-subtree-duration](#masto-meta-subtree-duration)
95. [masto-meta-subtree-frame-rate](#masto-meta-subtree-frame-rate)
96. [masto-meta-subtree-height](#masto-meta-subtree-height)
97. [masto-meta-subtree-size](#masto-meta-subtree-size)
98. [masto-meta-subtree-width](#masto-meta-subtree-width)
99. [masto-meta-subtree?](#masto-meta-subtree)
100. [masto-meta?](#masto-meta)
101. [masto-page-next](#masto-page-next)
102. [masto-page-objects](#masto-page-objects)
103. [masto-page-prev](#masto-page-prev)
104. [masto-page?](#masto-page)
105. [masto-poll-expired](#masto-poll-expired)
106. [masto-poll-expires-at](#masto-poll-expires-at)
107. [masto-poll-id](#masto-poll-id)
108. [masto-poll-multiple](#masto-poll-multiple)
109. [masto-poll-options](#masto-poll-options)
110. [masto-poll-voted](#masto-poll-voted)
111. [masto-poll-votes-count](#masto-poll-votes-count)
112. [masto-poll?](#masto-poll)
113. [masto-status-account](#masto-status-account)
114. [masto-status-application](#masto-status-application)
115. [masto-status-card](#masto-status-card)
116. [masto-status-content](#masto-status-content)
117. [masto-status-created-at](#masto-status-created-at)
118. [masto-status-emojis](#masto-status-emojis)
119. [masto-status-favorited](#masto-status-favorited)
120. [masto-status-favorites-count](#masto-status-favorites-count)
121. [masto-status-id](#masto-status-id)
122. [masto-status-in-reply-to-account-id](#masto-status-in-reply-to-account-id)
123. [masto-status-in-reply-to-id](#masto-status-in-reply-to-id)
124. [masto-status-language](#masto-status-language)
125. [masto-status-media-attachments](#masto-status-media-attachments)
126. [masto-status-mentions](#masto-status-mentions)
127. [masto-status-muted](#masto-status-muted)
128. [masto-status-pinned](#masto-status-pinned)
129. [masto-status-poll](#masto-status-poll)
130. [masto-status-reblog-status](#masto-status-reblog-status)
131. [masto-status-reblogged](#masto-status-reblogged)
132. [masto-status-reblogs-count](#masto-status-reblogs-count)
133. [masto-status-replies-count](#masto-status-replies-count)
134. [masto-status-sensitive](#masto-status-sensitive)
135. [masto-status-spoiler-text](#masto-status-spoiler-text)
136. [masto-status-tags](#masto-status-tags)
137. [masto-status-uri](#masto-status-uri)
138. [masto-status-url](#masto-status-url)
139. [masto-status-visibility](#masto-status-visibility)
140. [masto-status?](#masto-status)
141. [masto-tag-history](#masto-tag-history)
142. [masto-tag-name](#masto-tag-name)
143. [masto-tag-url](#masto-tag-url)
144. [masto-tag?](#masto-tag)
145. [masto-web-push-create-subscription](#masto-web-push-create-subscription)
146. [masto-web-push-delete-subscription](#masto-web-push-delete-subscription)
147. [masto-web-push-get-subscription](#masto-web-push-get-subscription)
148. [masto-web-push-subscription-alerts](#masto-web-push-subscription-alerts)
149. [masto-web-push-subscription-alerts-favorite](#masto-web-push-subscription-alerts-favorite)
150. [masto-web-push-subscription-alerts-follow](#masto-web-push-subscription-alerts-follow)
151. [masto-web-push-subscription-alerts-mention](#masto-web-push-subscription-alerts-mention)
152. [masto-web-push-subscription-alerts-poll](#masto-web-push-subscription-alerts-poll)
153. [masto-web-push-subscription-alerts-reblog](#masto-web-push-subscription-alerts-reblog)
154. [masto-web-push-subscription-alerts?](#masto-web-push-subscription-alerts)
155. [masto-web-push-subscription-endpoint](#masto-web-push-subscription-endpoint)
156. [masto-web-push-subscription-id](#masto-web-push-subscription-id)
157. [masto-web-push-subscription-server-key](#masto-web-push-subscription-server-key)
158. [masto-web-push-subscription?](#masto-web-push-subscription)
159. [masto-web-push-update-subscription](#masto-web-push-update-subscription)
160. [masto-notification-account](#masto-notification-account)
161. [masto-notification-create-at](#masto-notification-create-at)
162. [masto-notification-id](#masto-notification-id)
163. [masto-notification-status](#masto-notification-status)
164. [masto-notification-type](#masto-notification-type)
165. [masto-notification?](#masto-notification)
166. [masto-notification-dismiss](#masto-notification-dismiss)
167. [masto-notification-get](#masto-notification-get)
168. [masto-notifications-all](#masto-notifications-all)
169. [masto-notifications-all-clear](#masto-notifications-all-clear)


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

### \<mastodon-application\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `name` <br />
> `website` <br />

<br />

### \<mastodon-attachment\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `id` <br />
> `type` <br />
> `url` <br />
> `remoteURL` <br />
> `previewURL` <br />
> `textURL` <br />
> `meta` <br />
> `description` <br />
> `blurhash` <br />

<br />

### \<mastodon-card\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `url` <br />
> `title` <br />
> `description` <br />
> `image` <br />
> `type` <br />
> `authorName` <br />
> `authorURL` <br />
> `providerName` <br />
> `providerURL` <br />
> `html` <br />
> `width` <br />
> `height` <br />

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

### \<mastodon-history\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `day` <br />
> `uses` <br />
> `accounts` <br />

<br />

### \<mastodon-mention\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `url` <br />
> `username` <br />
> `acct` <br />
> `id` <br />

<br />

### \<mastodon-meta-focus\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `x` <br />
> `y` <br />

<br />

### \<mastodon-meta-subtree\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `width` <br />
> `height` <br />
> `size` <br />
> `aspect` <br />
> `frameRate` <br />
> `duration` <br />
> `bitrate` <br />

<br />

### \<mastodon-meta\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `small` <br />
> `original` <br />
> `focus` <br />

<br />

### \<mastodon-notification\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `id` <br />
> `type` <br />
> `createdAt` <br />
> `account` <br />
> `status` <br />

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

### \<mastodon-poll\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `id` <br />
> `expiresAt` <br />
> `expired` <br />
> `multiple` <br />
> `votesCount` <br />
> `options` <br />
> `voted` <br />

<br />

### \<mastodon-status\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `id` <br />
> `uri` <br />
> `url` <br />
> `account` <br />
> `inReplyToID` <br />
> `inReplyToAccountID` <br />
> `reblogStatus` <br />
> `content` <br />
> `createdAt` <br />
> `emojis` <br />
> `repliesCount` <br />
> `reblogsCount` <br />
> `favoritesCount` <br />
> `reblogged` <br />
> `favorited` <br />
> `muted` <br />
> `bookmarked` <br />
> `sensitive` <br />
> `spoilerText` <br />
> `visibility` <br />
> `mediaAttachments` <br />
> `mentions` <br />
> `tags` <br />
> `card` <br />
> `poll` <br />
> `application` <br />
> `language` <br />
> `pinned` <br />

<br />

### \<mastodon-tag\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `name` <br />
> `url` <br />
> `history` <br />

<br />

### \<mastodon-web-push-subscription-alerts\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `poll` <br />
> `mention` <br />
> `reblog` <br />
> `favorite` <br />
> `follow` <br />

<br />

### \<mastodon-web-push-subscription\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `id` <br />
> `endpoint` <br />
> `serverKey` <br />
> `alerts` <br />

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

### masto-application-name
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-application-website
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-application?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-attachment-blurhash
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-attachment-description
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-attachment-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-attachment-meta
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-attachment-preview-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-attachment-remote-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-attachment-text-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-attachment-type
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-attachment-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-attachment?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-card-author-name
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-card-author-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-card-description
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-card-height
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-card-html
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-card-image
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-card-provider-name
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-card-provider-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-card-title
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-card-type
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-card-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-card-width
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-card?
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

### masto-history-accounts
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-history-day
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-history-uses
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-history?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-mention-acct
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-mention-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-mention-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-mention-username
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-mention?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-meta-focus
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-meta-focus-x
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-meta-focus-y
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-meta-focus?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-meta-original
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-meta-small
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-meta-subtree-aspect
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-meta-subtree-bitrate
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-meta-subtree-duration
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-meta-subtree-frame-rate
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-meta-subtree-height
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-meta-subtree-size
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-meta-subtree-width
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-meta-subtree?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-meta?
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

### masto-poll-expired
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-poll-expires-at
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-poll-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-poll-multiple
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-poll-options
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-poll-voted
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-poll-votes-count
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-poll?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-status-account
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-application
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-card
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-content
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-created-at
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-emojis
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-favorited
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-favorites-count
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-in-reply-to-account-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-in-reply-to-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-language
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-media-attachments
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-mentions
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-muted
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-pinned
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-poll
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-reblog-status
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-reblogged
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-reblogs-count
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-replies-count
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-sensitive
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-spoiler-text
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-tags
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-uri
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status-visibility
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-status?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-tag-history
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-tag-name
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-tag-url
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-tag?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-web-push-create-subscription
##### Summary
Add a Web Push API subscription to receive notifications for the user tied to
`mastoApp`. Each access token can have one push subscription. If you create a
new subscription, the old subscription is deleted.

`subscriptionEndpoint` is the endpoint URL that's called when a notification
event occurs. `subscriptionEndpoint` can be a string or a uri object.

`subscriptionKeysP256dh` is the user agent public key. Base64 encoded string of
public key of ECDH key using `prime256v1` curve.

`subscriptionKeysAuth` is the auth secret. Base64 encoded string of 16 bytes of
random data.

`dataAlertsFollow`   is a boolean of whether to receive follow    notifications.<br />
`dataAlertsFavorite` is a boolean of whether to receive favourite notifications.<br />
`dataAlertsReblog`   is a boolean of whether to receive reblog    notifications.<br />
`dataAlertsMention`  is a boolean of whether to receive mention   notifications.<br />
`dataAlertsPoll`     is a boolean of whether to receive poll      notifications.

This function returns a [`<mastodon-web-push-subscription>`](#mastodon-web-push-subscription).

Find the original documentation [here](https://docs.joinmastodon.org/methods/notifications/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `subscriptionEndpoint` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `subscriptionKeysP256dh` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `subscriptionKeysAuth` <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:dataAlertsFollow` (argument position 5) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:dataAlertsFavorite` (argument position 6) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:dataAlertsReblog` (argument position 7) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:dataAlertsMention` (argument position 8) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:dataAlertsPoll` (argument position 9) <br />

<br />

### masto-web-push-delete-subscription
##### Summary
Delete the current subscription associated with the access token tied to
`mastoApp`.

This function, if successful, returns `#t`.

Find the original documentation [here](https://docs.joinmastodon.org/methods/notifications/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />

<br />

### masto-web-push-get-subscription
##### Summary
Get the current subscription associated with the access token tied to
`mastoApp`.

A [`<mastodon-web-push-subscription>`](#mastodon-web-push-subscription) is returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/notifications/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />

<br />

### masto-web-push-subscription-alerts
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-web-push-subscription-alerts-favorite
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-web-push-subscription-alerts-follow
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-web-push-subscription-alerts-mention
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-web-push-subscription-alerts-poll
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-web-push-subscription-alerts-reblog
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-web-push-subscription-alerts?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-web-push-subscription-endpoint
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-web-push-subscription-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-web-push-subscription-server-key
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-web-push-subscription?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-web-push-update-subscription
##### Summary
Update the current subscription associated with the access token tied to
`mastoApp`.

`dataAlertsFollow`   is a boolean of whether to receive follow    notifications.<br />
`dataAlertsFavorite` is a boolean of whether to receive favourite notifications.<br />
`dataAlertsReblog`   is a boolean of whether to receive reblog    notifications.<br />
`dataAlertsMention`  is a boolean of whether to receive mention   notifications.<br />
`dataAlertsPoll`     is a boolean of whether to receive poll      notifications.

A [`<mastodon-web-push-subscription>`](#mastodon-web-push-subscription) is returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/notifications/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:dataAlertsFollow` (argument position 2) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:dataAlertsFavorite` (argument position 3) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:dataAlertsReblog` (argument position 4) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:dataAlertsMention` (argument position 5) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:dataAlertsPoll` (argument position 6) <br />

<br />

### masto-notification-account
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-notification-create-at
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-notification-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-notification-status
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-notification-type
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-notification?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-notification-dismiss
##### Summary
Dismiss a specific notification from the server for the user tied to
`mastoApp`.

This function, if successful, returns `#t`.

Find the original documentation [here](https://docs.joinmastodon.org/methods/notifications/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `notificationID` <br />

<br />

### masto-notification-get
##### Summary
Get a notification with the ID `notificationID` for the user tied to
`mastoApp`.

A [`<mastodon-notification>`](#mastodon-notification) is returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/notifications/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `notificationID` <br />

<br />

### masto-notifications-all
##### Summary
Retrieve all notifications associated with the user tied to `mastoApp`.

`maxID`   will result in returning results older than this ID.<br />
`sinceID` will result in returning results newer than this ID.<br />
`minID`   will result in returning results immediately newer than this ID.

If no `limit` value is provided, the value 20 is used.

Specifying `accountID` will only return notifications from the said account.

A [`<mastodon-pagination-object>`](#mastodon-pagination-object) is returned, consisting of the
[`<mastodon-notification>`](#mastodon-notification)s that the user has blocked.

Find the original documentation [here](https://docs.joinmastodon.org/methods/notifications/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:maxID` (argument position 2) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:sinceID` (argument position 3) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:minID` (argument position 4) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:limit` (argument position 5) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:excludeTypes` (argument position 6) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:accountID` (argument position 7) <br />

<br />

### masto-notifications-all-clear
##### Summary
Dismiss all notifications from the server for the user tied to `mastoApp`.

This function, if successful, returns `#t`.

Find the original documentation [here](https://docs.joinmastodon.org/methods/notifications/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />

<br />


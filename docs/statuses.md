# statuses Module


<br />

## Table of Contents
1. [\<mastodon-account\>](#mastodon-account)
2. [\<mastodon-application\>](#mastodon-application)
3. [\<mastodon-attachment\>](#mastodon-attachment)
4. [\<mastodon-card\>](#mastodon-card)
5. [\<mastodon-context\>](#mastodon-context)
6. [\<mastodon-emoji\>](#mastodon-emoji)
7. [\<mastodon-field\>](#mastodon-field)
8. [\<mastodon-history\>](#mastodon-history)
9. [\<mastodon-mention\>](#mastodon-mention)
10. [\<mastodon-meta-focus\>](#mastodon-meta-focus)
11. [\<mastodon-meta-subtree\>](#mastodon-meta-subtree)
12. [\<mastodon-meta\>](#mastodon-meta)
13. [\<mastodon-pagination-object\>](#mastodon-pagination-object)
14. [\<mastodon-poll\>](#mastodon-poll)
15. [\<mastodon-scheduled-status-params\>](#mastodon-scheduled-status-params)
16. [\<mastodon-scheduled-status\>](#mastodon-scheduled-status)
17. [\<mastodon-status\>](#mastodon-status)
18. [\<mastodon-tag\>](#mastodon-tag)
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
34. [masto-account-locked?](#masto-account-locked)
35. [masto-account-moved](#masto-account-moved)
36. [masto-account-note](#masto-account-note)
37. [masto-account-statuses-count](#masto-account-statuses-count)
38. [masto-account-url](#masto-account-url)
39. [masto-account-username](#masto-account-username)
40. [masto-account?](#masto-account)
41. [masto-application-name](#masto-application-name)
42. [masto-application-website](#masto-application-website)
43. [masto-application?](#masto-application)
44. [masto-attachment-blurhash](#masto-attachment-blurhash)
45. [masto-attachment-description](#masto-attachment-description)
46. [masto-attachment-id](#masto-attachment-id)
47. [masto-attachment-meta](#masto-attachment-meta)
48. [masto-attachment-preview-url](#masto-attachment-preview-url)
49. [masto-attachment-remote-url](#masto-attachment-remote-url)
50. [masto-attachment-text-url](#masto-attachment-text-url)
51. [masto-attachment-type](#masto-attachment-type)
52. [masto-attachment-url](#masto-attachment-url)
53. [masto-attachment?](#masto-attachment)
54. [masto-card-author-name](#masto-card-author-name)
55. [masto-card-author-url](#masto-card-author-url)
56. [masto-card-description](#masto-card-description)
57. [masto-card-height](#masto-card-height)
58. [masto-card-html](#masto-card-html)
59. [masto-card-image](#masto-card-image)
60. [masto-card-provider-name](#masto-card-provider-name)
61. [masto-card-provider-url](#masto-card-provider-url)
62. [masto-card-title](#masto-card-title)
63. [masto-card-type](#masto-card-type)
64. [masto-card-url](#masto-card-url)
65. [masto-card-width](#masto-card-width)
66. [masto-card?](#masto-card)
67. [masto-context-ancestors](#masto-context-ancestors)
68. [masto-context-descendants](#masto-context-descendants)
69. [masto-context?](#masto-context)
70. [masto-emoji-shortcode](#masto-emoji-shortcode)
71. [masto-emoji-static-url](#masto-emoji-static-url)
72. [masto-emoji-url](#masto-emoji-url)
73. [masto-emoji-visible-in-picker?](#masto-emoji-visible-in-picker)
74. [masto-emoji?](#masto-emoji)
75. [masto-field-name](#masto-field-name)
76. [masto-field-value](#masto-field-value)
77. [masto-field-verified-at](#masto-field-verified-at)
78. [masto-field?](#masto-field)
79. [masto-history-accounts](#masto-history-accounts)
80. [masto-history-day](#masto-history-day)
81. [masto-history-uses](#masto-history-uses)
82. [masto-history?](#masto-history)
83. [masto-mention-acct](#masto-mention-acct)
84. [masto-mention-id](#masto-mention-id)
85. [masto-mention-url](#masto-mention-url)
86. [masto-mention-username](#masto-mention-username)
87. [masto-mention?](#masto-mention)
88. [masto-meta-focus](#masto-meta-focus)
89. [masto-meta-focus-x](#masto-meta-focus-x)
90. [masto-meta-focus-y](#masto-meta-focus-y)
91. [masto-meta-focus?](#masto-meta-focus)
92. [masto-meta-original](#masto-meta-original)
93. [masto-meta-small](#masto-meta-small)
94. [masto-meta-subtree-aspect](#masto-meta-subtree-aspect)
95. [masto-meta-subtree-bitrate](#masto-meta-subtree-bitrate)
96. [masto-meta-subtree-duration](#masto-meta-subtree-duration)
97. [masto-meta-subtree-frame-rate](#masto-meta-subtree-frame-rate)
98. [masto-meta-subtree-height](#masto-meta-subtree-height)
99. [masto-meta-subtree-size](#masto-meta-subtree-size)
100. [masto-meta-subtree-width](#masto-meta-subtree-width)
101. [masto-meta-subtree?](#masto-meta-subtree)
102. [masto-meta?](#masto-meta)
103. [masto-page-next](#masto-page-next)
104. [masto-page-objects](#masto-page-objects)
105. [masto-page-prev](#masto-page-prev)
106. [masto-page?](#masto-page)
107. [masto-poll-expired](#masto-poll-expired)
108. [masto-poll-expires-at](#masto-poll-expires-at)
109. [masto-poll-id](#masto-poll-id)
110. [masto-poll-multiple](#masto-poll-multiple)
111. [masto-poll-options](#masto-poll-options)
112. [masto-poll-voted](#masto-poll-voted)
113. [masto-poll-votes-count](#masto-poll-votes-count)
114. [masto-poll?](#masto-poll)
115. [masto-scheduled-status-id](#masto-scheduled-status-id)
116. [masto-scheduled-status-media-attachments](#masto-scheduled-status-media-attachments)
117. [masto-scheduled-status-params](#masto-scheduled-status-params)
118. [masto-scheduled-status-params-application-id](#masto-scheduled-status-params-application-id)
119. [masto-scheduled-status-params-in-reply-to-id](#masto-scheduled-status-params-in-reply-to-id)
120. [masto-scheduled-status-params-media-ids](#masto-scheduled-status-params-media-ids)
121. [masto-scheduled-status-params-scheduled-at](#masto-scheduled-status-params-scheduled-at)
122. [masto-scheduled-status-params-sensitive](#masto-scheduled-status-params-sensitive)
123. [masto-scheduled-status-params-spoiler-text](#masto-scheduled-status-params-spoiler-text)
124. [masto-scheduled-status-params-text](#masto-scheduled-status-params-text)
125. [masto-scheduled-status-params-visibility](#masto-scheduled-status-params-visibility)
126. [masto-scheduled-status-params?](#masto-scheduled-status-params)
127. [masto-scheduled-status-scheduled-at](#masto-scheduled-status-scheduled-at)
128. [masto-scheduled-status?](#masto-scheduled-status)
129. [masto-tag-history](#masto-tag-history)
130. [masto-tag-name](#masto-tag-name)
131. [masto-tag-url](#masto-tag-url)
132. [masto-tag?](#masto-tag)
133. [masto-status-account](#masto-status-account)
134. [masto-status-application](#masto-status-application)
135. [masto-status-card](#masto-status-card)
136. [masto-status-content](#masto-status-content)
137. [masto-status-created-at](#masto-status-created-at)
138. [masto-status-emojis](#masto-status-emojis)
139. [masto-status-favorited](#masto-status-favorited)
140. [masto-status-favorites-count](#masto-status-favorites-count)
141. [masto-status-id](#masto-status-id)
142. [masto-status-in-reply-to-account-id](#masto-status-in-reply-to-account-id)
143. [masto-status-in-reply-to-id](#masto-status-in-reply-to-id)
144. [masto-status-language](#masto-status-language)
145. [masto-status-media-attachments](#masto-status-media-attachments)
146. [masto-status-mentions](#masto-status-mentions)
147. [masto-status-muted](#masto-status-muted)
148. [masto-status-pinned](#masto-status-pinned)
149. [masto-status-poll](#masto-status-poll)
150. [masto-status-reblog-status](#masto-status-reblog-status)
151. [masto-status-reblogged](#masto-status-reblogged)
152. [masto-status-reblogs-count](#masto-status-reblogs-count)
153. [masto-status-replies-count](#masto-status-replies-count)
154. [masto-status-sensitive](#masto-status-sensitive)
155. [masto-status-spoiler-text](#masto-status-spoiler-text)
156. [masto-status-tags](#masto-status-tags)
157. [masto-status-uri](#masto-status-uri)
158. [masto-status-url](#masto-status-url)
159. [masto-status-visibility](#masto-status-visibility)
160. [masto-status?](#masto-status)
161. [masto-status-bookmark](#masto-status-bookmark)
162. [masto-status-create](#masto-status-create)
163. [masto-status-delete](#masto-status-delete)
164. [masto-status-get](#masto-status-get)
165. [masto-status-get-context](#masto-status-get-context)
166. [masto-status-get-favorited-by](#masto-status-get-favorited-by)
167. [masto-status-get-reblogged-by](#masto-status-get-reblogged-by)
168. [masto-status-pin](#masto-status-pin)
169. [masto-status-reblog](#masto-status-reblog)
170. [masto-status-unbookmark](#masto-status-unbookmark)
171. [masto-status-unpin](#masto-status-unpin)
172. [masto-status-unreblog](#masto-status-unreblog)


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

### \<mastodon-context\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `ancestors` <br />
> `descendants` <br />

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

### \<mastodon-scheduled-status-params\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `text` <br />
> `inReplyToID` <br />
> `mediaIDs` <br />
> `sensitive` <br />
> `spoilerText` <br />
> `visibility` <br />
> `scheduledAt` <br />
> `applicationID` <br />

<br />

### \<mastodon-scheduled-status\>
##### Summary
A record object that can be returned by an API call.
##### Record Fields
> `id` <br />
> `scheduledAt` <br />
> `params` <br />
> `mediaAttachments` <br />

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

### masto-context-ancestors
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-context-descendants
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-context?
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

### masto-scheduled-status-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-scheduled-status-media-attachments
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-scheduled-status-params
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-scheduled-status-params-application-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-scheduled-status-params-in-reply-to-id
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-scheduled-status-params-media-ids
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-scheduled-status-params-scheduled-at
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-scheduled-status-params-sensitive
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-scheduled-status-params-spoiler-text
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-scheduled-status-params-text
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-scheduled-status-params-visibility
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-scheduled-status-params?
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `obj` <br />

<br />

### masto-scheduled-status-scheduled-at
##### Summary
#f
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `s` <br />

<br />

### masto-scheduled-status?
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

### masto-status-bookmark
##### Summary
Bookmark the status, for the user tied to `mastoApp`, which has the ID
`statusID`.

A [`<mastodon-status>`](#mastodon-status) is returned of the status which was bookmarked.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `statusID` <br />

<br />

### masto-status-create
##### Summary
Post a new status for the user tied to `mastoApp`.

For the status, a [`<mastodon-status>`](#mastodon-status) can be provided for `#:statusObject`;
otherwise, `#:statusText`, `#:inReplyToID`, `#:mediaIDs`, `#:sensitive`,
`#:spoilerText`, and `#:visibility` must be provided, instead. If
`#:statusObject` is provided, the other parameters just listed will be ignored.

`#:scheduledAt` can be a SRFI-19
[date](https://www.gnu.org/software/guile/manual/html_node/SRFI_002d19-Date.html)
object or a ISO 8601 Datetime string; if using a SRFI-19 date, the appropriately
formatted string will be generated, for you.

[`<mastodon-poll>`](#mastodon-poll) can be provided for `#:poll`; otherwise, `#:pollOptions`,
`#:pollExpiresIn`, `#:pollMultiple`, and `#:pollHideTotals` must be provided,
instead. If `#:poll` is provided, the other parameters just listed will be
ignored.

`#:idempotencyKey` is used to prevent duplicate submissions of the same status.
Idempotency keys are stored for up to 1 hour and can be any arbitrary string.
Consider using a hash or UUID generated client-side.

A [`<mastodon-status>`](#mastodon-status) is returned; if `#:scheduledAt` is provided, a
[`<mastodon-scheduled-status>`](#mastodon-scheduled-status) is returned, instead.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:statusObject` (argument position 2) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:statusText` (argument position 3) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:inReplyToID` (argument position 4) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:mediaIDs` (argument position 5) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:sensitive` (argument position 6) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:spoilerText` (argument position 7) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:visibility` (argument position 8) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:scheduledAt` (argument position 9) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:language` (argument position 10) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:poll` (argument position 11) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:pollOptions` (argument position 12) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:pollExpiresIn` (argument position 13) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:pollMultiple` (argument position 14) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:pollHideTotals` (argument position 15) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:idempotencyKey` (argument position 16) <br />

<br />

### masto-status-delete
##### Summary
Delete the status for the user tied to `mastoApp` which has the ID
`statusID`.

This function, if successful, returns `#t`.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `statusID` <br />

<br />

### masto-status-get
##### Summary
View an existing Fediverse status with the ID `statusID`.

`domainOrApp` can be the instance domain as a String or a
[`<mastodon-instance-application>`](auth.md#mastodon-instance-application), whose associated `domain` will be used instead.

If the status in question is private, you will need to use a
[`<mastodon-instance-application>`](auth.md#mastodon-instance-application) for `domainOrApp` in order to determine if the
user has permission to view the status.

A [`<mastodon-status>`](#mastodon-status) is returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `domainOrApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `statusID` <br />

<br />

### masto-status-get-context
##### Summary
View the statuses above and below the status with the ID `statusID`.

`domainOrApp` can be the instance domain as a String or a
[`<mastodon-instance-application>`](auth.md#mastodon-instance-application), whose associated `domain` will be used instead.

If the status in question is private, you will need to use a
[`<mastodon-instance-application>`](auth.md#mastodon-instance-application) for `domainOrApp` in order to determine if the
user has permission to view the status.

A [`<mastodon-context>`](#mastodon-context) is returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `domainOrApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `statusID` <br />

<br />

### masto-status-get-favorited-by
##### Summary
View who favorited the status that has the ID `statusID`.

`domainOrApp` can be the instance domain as a String or a
[`<mastodon-instance-application>`](auth.md#mastodon-instance-application), whose associated `domain` will be used instead.

If the status in question is private, you will need to use a
[`<mastodon-instance-application>`](auth.md#mastodon-instance-application) for `domainOrApp` in order to determine if the
user has permission to view the status.

A list of [`<mastodon-account>`](#mastodon-account)s is returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `domainOrApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `statusID` <br />

<br />

### masto-status-get-reblogged-by
##### Summary
View who boosted the status that has the ID `statusID`.

`domainOrApp` can be the instance domain as a String or a
[`<mastodon-instance-application>`](auth.md#mastodon-instance-application), whose associated `domain` will be used instead.

If the status in question is private, you will need to use a
[`<mastodon-instance-application>`](auth.md#mastodon-instance-application) for `domainOrApp` in order to determine if the
user has permission to view the status.

A list of [`<mastodon-account>`](#mastodon-account)s is returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `domainOrApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `statusID` <br />

<br />

### masto-status-pin
##### Summary
Pin the status, for the user tied to `mastoApp`, which has the ID `statusID`.

A [`<mastodon-status>`](#mastodon-status) is returned of the status which was pinned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `statusID` <br />

<br />

### masto-status-reblog
##### Summary
Reblog the status, for the user tied to `mastoApp`, which has the ID
`statusID`.

A [`<mastodon-status>`](#mastodon-status) is returned with the ID of the boosted status being
retrievable via the [`[`masto-status-reblog`](#masto-status-reblog)-status`](#[`masto-status-reblog`](#masto-status-reblog)-status) function.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `statusID` <br />

<br />

### masto-status-unbookmark
##### Summary
Unbookmark the status, for the user tied to `mastoApp`, which has the ID
`statusID`.

A [`<mastodon-status>`](#mastodon-status) is returned of the status which was unbookmarked.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `statusID` <br />

<br />

### masto-status-unpin
##### Summary
Unpin the status, for the user tied to `mastoApp`, which has the ID `statusID`.

A [`<mastodon-status>`](#mastodon-status) is returned of the status which was unpinned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `statusID` <br />

<br />

### masto-status-unreblog
##### Summary
Unreblog the status, for the user tied to `mastoApp`, which has the ID
`statusID`.

A [`<mastodon-status>`](#mastodon-status) is returned of the status which was unreblogged.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `statusID` <br />

<br />


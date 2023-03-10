# media-attachments Module


<br />

## Table of Contents
1. [\<mastodon-attachment\>](#mastodon-attachment)
2. [\<mastodon-meta-focus\>](#mastodon-meta-focus)
3. [\<mastodon-meta-subtree\>](#mastodon-meta-subtree)
4. [\<mastodon-meta\>](#mastodon-meta)
5. [masto-attachment-blurhash](#masto-attachment-blurhash)
6. [masto-attachment-description](#masto-attachment-description)
7. [masto-attachment-id](#masto-attachment-id)
8. [masto-attachment-meta](#masto-attachment-meta)
9. [masto-attachment-preview-url](#masto-attachment-preview-url)
10. [masto-attachment-remote-url](#masto-attachment-remote-url)
11. [masto-attachment-text-url](#masto-attachment-text-url)
12. [masto-attachment-type](#masto-attachment-type)
13. [masto-attachment-url](#masto-attachment-url)
14. [masto-attachment?](#masto-attachment)
15. [masto-media-update](#masto-media-update)
16. [masto-media-upload](#masto-media-upload)
17. [masto-meta-focus](#masto-meta-focus)
18. [masto-meta-focus-x](#masto-meta-focus-x)
19. [masto-meta-focus-y](#masto-meta-focus-y)
20. [masto-meta-focus?](#masto-meta-focus)
21. [masto-meta-original](#masto-meta-original)
22. [masto-meta-small](#masto-meta-small)
23. [masto-meta-subtree-aspect](#masto-meta-subtree-aspect)
24. [masto-meta-subtree-bitrate](#masto-meta-subtree-bitrate)
25. [masto-meta-subtree-duration](#masto-meta-subtree-duration)
26. [masto-meta-subtree-frame-rate](#masto-meta-subtree-frame-rate)
27. [masto-meta-subtree-height](#masto-meta-subtree-height)
28. [masto-meta-subtree-size](#masto-meta-subtree-size)
29. [masto-meta-subtree-width](#masto-meta-subtree-width)
30. [masto-meta-subtree?](#masto-meta-subtree)
31. [masto-meta?](#masto-meta)


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

### masto-media-update
##### Summary
Update media, with ID of `mediaID`, at the instance tied to `mastoApp`.

Keyword arguments `#:description`, `#:x`, and `#:y` are all optional but `#:x`
and `#:y` must both be provided, if one or the other is provided at all.
`#:description` has a character limit of 420 characters.

The media can only be updated before it is attached to a status and posted.

This function returns a [`<mastodon-attachment>`](#mastodon-attachment) of the media that was updated.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/media/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mediaID` <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:description` (argument position 3) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:x` (argument position 4) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:y` (argument position 5) <br />

<br />

### masto-media-upload
##### Summary
Upload media, locally stored at `filePath`, to the instance tied to
`mastoApp`.

Keyword arguments `#:description`, `#:x`, and `#:y` are all optional but `#:x`
and `#:y` must both be provided, if one or the other is provided at all.
`#:description` has a character limit of 420 characters.

This function returns a [`<mastodon-attachment>`](#mastodon-attachment) of the media that was uploaded.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/media/).
##### Parameters
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `mastoApp` <br />
> ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `filePath` <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:description` (argument position 3) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:x` (argument position 4) <br />
> ![#1589F0](https://placehold.it/15/1589F0/000000?text=+) `#:y` (argument position 5) <br />

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


# LumiIllustrations Contribution Guide

This guide defines the visual direction and contribution rules for artwork in this package. The goal is a coherent library of illustrations that sits naturally inside Lumi and Coffic product pages.

## Style reference

Use the six illustrations retained from the package’s first commit as the original reference set. The primary reference is `incident-log-illustration.png`, selected by the project owner as the clearest example of the desired character style. The `-v4` images are the selected current artwork for their subjects and should guide new additions alongside that original reference set.

Match the reference's polished, painterly editorial rendering: softly modeled forms, warm natural skin shading, detailed hair, tactile clothing and objects, restrained highlights, and clean readable silhouettes. Keep human faces and anatomy natural and mature. Characters may differ between scenes; their proportions, facial treatment, lighting, material detail, and overall level of stylization should still feel like one family. Avoid chibi proportions, oversized eyes, flat vector fills, heavy cartoon outlines, or glossy toy-like surfaces.

For people, default to contemporary Chinese or East Asian appearance unless the subject or product context calls for another background. Represent this naturally through facial proportions, eyes, hair, and complexion; avoid both Western-coded features that break the set's visual identity and exaggerated ethnic stereotypes. Keep the same restrained, painterly face treatment across women, men, and children.

The established palette favors deep and mid blues, warm cream, natural wood, and muted greens or teals. Use colors that support each subject instead of forcing every color into every image.

## Composition and subject

- Let the illustration's subject determine its objects and setting. A technology illustration may use a laptop or a simple diagram; a learning scene may use a book. Keep supporting props sparse and easy to read.
- Do not add plants as a standard decoration. Include them only when they make sense for the particular scene.
- Keep important people, objects, and gestures legible at the size where a website or app will display the image. Prefer a compact composition with natural spacing.
- Show believable poses and hands. Check the number of arms and hands, finger placement, object contact, and how held items sit in the hands.
- Do not add decorative text, logos, watermarks, or detailed interface copy. Any interface or diagram should be simple and secondary to the subject.

## Background and edges

- Deliver artwork as a PNG with a genuine transparent background unless a consuming surface specifically requires an opaque image.
- Do not place the scene on a colored or white rectangular canvas. Do not add a card, frame, border, full-image outline, vignette, background gradient, glow, or a blanket fade around the artwork.
- Preserve the scene's natural silhouette. Use alpha only for normal antialiasing and local translucency that belongs to an object; do not deliberately feather the entire perimeter.
- Keep contact shadows close to the objects that cast them. Avoid ambient color fields that appear as a background when composited on a page.
- Review the PNG composited on the intended page color. A transparent file can still contain a visible matte, halo, or unwanted background tint.

## File naming and revisions

- Keep each approved asset in `Sources/LumiIllustrationsKit/Resources/Illustrations/`.
- Never overwrite a published or previously approved image. Add a version suffix to create a sibling variant, for example `analytics-v4.png`. Keep the six first-commit reference images and the selected current `-v4` artwork; do not add superseded intermediate variants to the published collection.
- Match the aspect ratio and framing needed by the consuming surface. Landscape artwork is common in this package, but use a square composition when the actual placement calls for one.
- Keep review-only generations outside the repository. Copy only assets approved by the project owner into the package.

## Contribution review

Before adding an asset:

1. Check the package's original reference art and the current use of the target asset; use `incident-log-illustration.png` for character and rendering consistency.
2. Confirm the scene matches the asset's purpose and that no generic decoration was added without reason.
3. Inspect transparency, natural edges, anatomy, hands, object contact, and visual balance at both full size and intended display size.
4. Composite the transparent PNG on the intended page background and look for a rectangle, border, matte, halo, or perimeter fade.
5. Keep the reference files intact, use a new versioned filename, and verify that the new asset may be redistributed under the terms documented in [ASSET-LICENSES.md](ASSET-LICENSES.md). Only the selected current artwork and the original reference set belong in the published collection.

## Rights and provenance

Only add artwork whose source and redistribution rights are clear for this public package. Follow [ASSET-LICENSES.md](ASSET-LICENSES.md) for attribution and license information. Keep provenance records for generated or externally sourced artwork with the package's asset-license documentation.

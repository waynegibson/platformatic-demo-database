CREATE TABLE public.testimonials(
  id uuid NOT NULL DEFAULT gen_random_uuid(),
  "name" text NOT NULL,
  body text NOT NULL,
  slug text NOT NULL,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp,
  CONSTRAINT testimonials_pkey PRIMARY KEY(id)
);

  CREATE UNIQUE INDEX testimonials_slug_idx ON public.testimonials(slug);

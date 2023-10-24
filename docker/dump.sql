CREATE TABLE public.notes (
    id integer NOT NULL,
    added timestamp without time zone DEFAULT now(),
    noteid integer NOT NULL,
    due timestamp without time zone NOT NULL,
    reopened boolean DEFAULT false,
    commenttimestamp timestamp without time zone NOT NULL
);

ALTER TABLE ONLY public.notes
	    ADD CONSTRAINT unique_notes_id_commenttimestamp UNIQUE (noteid, commenttimestamp);


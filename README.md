# Bengaluru Election Opinion Poll

Independent academic opinion survey for the Bengaluru Teachers' Constituency.

Candidates:
- A. P. Ranganath — NDA
- Puttanna — Congress

The app is neutral and does not endorse either candidate. It is not an official election ballot or Election Commission poll.

## Setup
1. Create a free Supabase project.
2. Run supabase/schema.sql in the Supabase SQL Editor.
3. Copy .env.example to .env.local.
4. Add the Supabase project URL and anon key.
5. Run npm install, then npm run dev.
6. Deploy to Vercel and add the same environment variables.

Votes store only candidate, a generated browser identifier, and timestamp. The identifier is used to reduce duplicate submissions; it cannot guarantee one response per human. Raw vote rows are not publicly readable; only aggregate results are exposed.
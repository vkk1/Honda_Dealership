const supabaseUrl = 'https://vnvitfftrgicalvsffwr.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZudml0ZmZ0cmdpY2FsdnNmZndyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDk0OTY1MjEsImV4cCI6MjA2NTA3MjUyMX0.3S8Bn8NUaeb3rjYaaTrQVy0IaWQVlX_wq0GvQAhQCgg';
const client = supabase.createClient(supabaseUrl, supabaseKey);

const signUpForm = document.getElementById('signUpForm');
const loginForm  = document.getElementById('loginForm');

signUpForm.onsubmit = async (e) => {
  e.preventDefault();
  const email    = signUpEmail.value;
  const password = signUpPassword.value;
  const username = signUpUsername.value;

  const { data, error } = await client.auth.signUp(
    { email, password },
    { data: { username, role: 'user' } }
  );
  if (error) return alert('Sign-up error: ' + error.message);

  await client
    .from('profiles')
    .insert([{ id: data.user.id, username, role: 'user' }]);

  alert('Check your email to confirm your account!');
};

loginForm.onsubmit = async (e) => {
  e.preventDefault();
  const email    = loginEmail.value;
  const password = loginPassword.value;

  const { error } = await client.auth.signInWithPassword({ email, password });
  if (error) return alert('Login failed: ' + error.message);

  // redirects to home page
  window.location.href = 'index.html';
};

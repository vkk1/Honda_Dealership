const client = supabase.createClient(
  'https://vnvitfftrgicalvsffwr.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZudml0ZmZ0cmdpY2FsdnNmZndyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDk0OTY1MjEsImV4cCI6MjA2NTA3MjUyMX0.3S8Bn8NUaeb3rjYaaTrQVy0IaWQVlX_wq0GvQAhQCgg'
);

// show/hide adminOnly vs userOnly
async function checkUserRoleAndToggleAdminUI() {
  const adminSection = document.getElementById("adminOnly");
  const userSection  = document.getElementById("userOnly");
  adminSection.style.display = "none";
  userSection.style.display  = "none";

  const { data: { session } } = await client.auth.getSession();
  const user = session?.user;
  if (!user) return;

  const { data: roleData } = await client
    .from("user_roles")
    .select("role")
    .eq("id", user.id)
    .single();

  if (roleData?.role === "admin") {
    adminSection.style.display = "block";
  } else {
    userSection.style.display = "block";
  }
}

window.addEventListener("DOMContentLoaded", checkUserRoleAndToggleAdminUI);

// === AUTH ===
signupForm.onsubmit = async (e) => {
  e.preventDefault();
  const { error } = await client.auth.signUp({
    email: signupEmail.value,
    password: signupPassword.value
  });
  alert(error
    ? "Signup failed: " + error.message
    : "Signup successful. Check your email to confirm."
  );
};

loginForm.onsubmit = async (e) => {
  e.preventDefault();
  const { error } = await client.auth.signInWithPassword({
    email: loginEmail.value,
    password: loginPassword.value
  });
  if (error) return alert("Login failed: " + error.message);
  alert("Login successful.");
  await checkUserRoleAndToggleAdminUI();
};

logoutBtn.onclick = async () => {
  await client.auth.signOut();
  alert("Logged out.");
  location.reload(); 
};

changePasswordForm.onsubmit = async (e) => {
  e.preventDefault();
  const { error } = await client.auth.updateUser({
    password: newPassword.value
  });
  alert(error
    ? "Password change failed: " + error.message
    : "Password changed."
  );
};

// only admin can promote
promoteForm.onsubmit = async (e) => {
  e.preventDefault();
  const { error } = await client.from("user_roles").upsert([{
    id: promoteUserId.value,
    role: "admin"
  }]);
  alert(error
    ? "Promotion failed: " + error.message
    : "User promoted to admin."
  );
};


// REPORTS: ADMIN 
document.getElementById("reportCountEmployees").onclick = async () => {
  const { data, error } = await client.rpc("count_employees");
  alert(error ? error.message : `Total employees: ${data}`);
};
document.getElementById("reportMinPrice").onclick = async () => {
  const { data, error } = await client.rpc("min_price");
  alert(error ? error.message : `Min car price: ${data}`);
};
document.getElementById("reportMaxPrice").onclick = async () => {
  const { data, error } = await client.rpc("max_price");
  alert(error ? error.message : `Max car price: ${data}`);
};
document.getElementById("reportAvgPrice").onclick = async () => {
  const { data, error } = await client.rpc("avg_price");
  alert(error ? error.message : `Avg car price: ${data}`);
};
document.getElementById("reportSumPayments").onclick = async () => {
  const { data, error } = await client.rpc("sum_payments");
  alert(error ? error.message : `Sum of payments: ${data}`);
};

// REPORTS: USER 
document.getElementById("reportCountFeedback").onclick = async () => {
  const { data, error } = await client.rpc("count_feedback");
  alert(error ? error.message : `Total feedbacks: ${data}`);
};
document.getElementById("reportMinRating").onclick = async () => {
  const { data, error } = await client.rpc("min_rating");
  alert(error ? error.message : `Min rating: ${data}`);
};
document.getElementById("reportMaxRating").onclick = async () => {
  const { data, error } = await client.rpc("max_rating");
  alert(error ? error.message : `Max rating: ${data}`);
};
document.getElementById("reportAvgRating").onclick = async () => {
  const { data, error } = await client.rpc("avg_rating");
  alert(error ? error.message : `Avg rating: ${data}`);
};
document.getElementById("reportSumRating").onclick = async () => {
  const { data, error } = await client.rpc("sum_rating");
  alert(error ? error.message : `Sum of ratings: ${data}`);
};

// EMPLOYEE 
employeeInsertForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("employee").insert([{
    name: empName.value,
    title: empTitle.value,
    ssn: empSSN.value,
    phone: empPhone.value,
    address: empAddress.value
  }]);
  alert("Employee added");
};
employeeDeleteForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("employee").delete().eq("name", empDeleteId.value);
  alert("Employee deleted");
};
employeeUpdateForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("employee").update({ phone: empNewPhone.value })
                   .eq("name", empUpdateName.value);
  alert("Phone updated");
};

// SALESPERSON 
salespersonInsertForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("salesperson").insert([{
    id: parseInt(salespersonId.value),
    name: salespersonName.value,
    email: salespersonEmail.value,
    phone: salespersonPhone.value
  }]);
  alert("Salesperson added");
};
salespersonDeleteForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("salesperson").delete().eq("name", salespersonDeleteName.value);
  alert("Salesperson deleted");
};
salespersonUpdateForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("salesperson").update({ phone: salespersonNewPhone.value })
                   .eq("id", parseInt(salespersonUpdateId.value));
  alert("Salesperson phone updated");
};

// PURCHASE 
purchaseInsertForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("purchase").insert([{
    date: purchaseDate.value,
    customer_id: parseInt(purchaseCustomerId.value),
    vin: purchaseVIN.value,
    salesperson_id: parseInt(purchaseSalespersonId.value)
  }]);
  alert("Purchase added");
};
purchaseDeleteForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("purchase").delete().eq("id", parseInt(purchaseDeleteId.value));
  alert("Purchase deleted");
};
purchaseUpdateForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("purchase").update({ date: purchaseNewDate.value })
                   .eq("id", parseInt(purchaseUpdateId.value));
  alert("Purchase date updated");
};

// PAYMENT 
paymentInsertForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("payment").insert([{
    date: paymentDate.value,
    amount: parseFloat(paymentAmount.value),
    method: paymentMethod.value,
    status: paymentStatus.value,
    purchase_id: parseInt(paymentPurchaseId.value)
  }]);
  alert("Payment added");
};
paymentDeleteForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("payment").delete().eq("id", parseInt(paymentDeleteId.value));
  alert("Payment deleted");
};
paymentUpdateForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("payment").update({ status: paymentNewStatus.value })
                   .eq("id", parseInt(paymentUpdateId.value));
  alert("Payment status updated");
};

// FEEDBACK 
feedbackInsertForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("feedback").insert([{
    rating: parseInt(feedbackRating.value),
    date: feedbackDate.value,
    comments: feedbackComments.value,
    customer_id: parseInt(feedbackCustomerId.value),
    salesperson_id: parseInt(feedbackSalespersonId.value)
  }]);
  alert("Feedback added");
};
feedbackDeleteForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("feedback").delete().eq("id", parseInt(feedbackDeleteId.value));
  alert("Feedback deleted");
};
feedbackUpdateForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("feedback").update({ rating: parseInt(feedbackNewRating.value) })
                   .eq("id", parseInt(feedbackUpdateId.value));
  alert("Feedback updated");
};

// CUSTOMER 
customerInsertForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("customer").insert([{
    name: custName.value,
    email: custEmail.value,
    phone: custPhone.value,
    address: custAddress.value,
    salesperson_id: parseInt(custSalespersonId.value)
  }]);
  alert("Customer added");
};
customerDeleteForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("customer").delete().eq("name", custDeleteName.value);
  alert("Customer deleted");
};
customerUpdateForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("customer").update({ phone: custNewPhone.value })
                   .eq("name", custUpdateName.value);
  alert("Customer phone updated");
};

// CAR 
carInsertForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("car").insert([{
    vin: carVIN.value,
    price: parseFloat(carPrice.value),
    make: carMake.value,
    model: carModel.value,
    year: parseInt(carYear.value),
    employee_id: parseInt(carEmployeeId.value)
  }]);
  alert("Car added");
};
carDeleteForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("car").delete().eq("vin", carDeleteVIN.value);
  alert("Car deleted");
};
carUpdateForm.onsubmit = async (e) => {
  e.preventDefault();
  await client.from("car").update({ price: parseFloat(carNewPrice.value) })
                   .eq("vin", carUpdateVIN.value);
  alert("Car price updated");
};

import axios from 'axios';



export const ROUTES = [
    '/query_one',
    '/query_two',
    '/query_three',
    '/query_four',
    '/query_five',
    '/query_six',
    '/query_seven',
    '/login',
    'register_user',
    'add_favourite'
]

const client = axios.create({
    // baseURL: "http://localhost:3000/"
    baseURL: "https://db-backend-3m2t.onrender.com/"
});

export default client;



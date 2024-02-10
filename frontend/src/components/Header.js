import React from 'react';
import AppBar from '@mui/material/AppBar';
import Toolbar from '@mui/material/Toolbar';
import Button from '@mui/material/Button';
import Avatar from '@mui/material/Avatar';

const bcLogo = require('../assets/gov3_bc_logo.png').default;

const Header = () => {
    return (
        <AppBar position="static">
            <Toolbar>
                <Avatar
                    src={bcLogo} // Path to your image file
                    alt="BC Icon"
                    sx={{ width: 80, height: 80, marginRight: 2 }} // Adjust size and spacing as needed
                />
                <nav>
                    <Button color="inherit">Search</Button>
                    <Button color="inherit">Add Client</Button>
                    {/* Add more navigation links as needed */}
                </nav>
            </Toolbar>
        </AppBar>
    );
}

export default Header;

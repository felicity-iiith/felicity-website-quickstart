<?php

$cfg = [
    'default_controller'    => 'hello',
    'default_method'        => 'index',

    'base_url'  => '',

    'databases' => [
        'jugaad' => [
            'db_host'   => 'localhost',
            'db_user'   => 'feli',
            'db_pass'   => 'password',
            'db_name'   => 'jugaad',
        ],
        'users' => [
            'db_host'   => 'localhost',
            'db_user'   => 'feli',
            'db_pass'   => 'password',
            'db_name'   => 'users',
        ],
        'sap' => [
            'db_host'   => 'localhost',
            'db_user'   => 'feli',
            'db_pass'   => 'password',
            'db_name'   => 'sap',
        ],
        'contest' => [
            'db_host'   => 'localhost',
            'db_user'   => 'feli',
            'db_pass'   => 'password',
            'db_name'   => 'contest',
        ],
    ],

    'i18n' => [
        'locales' => [
            'en_IN',
        ],
        'languages' => [
            'en' => 'en_IN',
        ],
        // 'gettext' => false,
        'gettext' => [
            'domain' => 'messages',
            'directory' => './locale'
        ]
    ],

    '404_view' => 'http_error',
    '404_data' => ['error_code' => 404],
];

$admins = [
    // List of user ids of admins
];

$cas_cfg = [
    'host'           => 'login.iiit.ac.in',
    'context'        => '/cas',
    'port'           => 443,
    'server_ca_cert' => APPPATH . 'iiit.ac.in.pem', // Optional, Recommended.
];

$SECRET_STRING = 'kuchbhi';

$email_cfg = [
    'server_host'   => '127.0.0.1',
    'server_domain' => '127.0.0.1',
    'server_port'   => 1025,
    'smtp_auth'     => false,
    'smtp_secure'   => '',
    'accounts'      => [
        'noreply'   => [
            'username'  => 'email_user',
            'password'  => 'email_user_pass',
            'email'     => 'email_address',
            'from_name' => 'Team Felicity'
        ],
        'noreply_threads'   => [
            'username'      => 'email_user',
            'password'      => 'email_user_pass',
            'email'         => 'email_address',
            'from_name'     => 'Team Felicity',
            'reply_to'      => 'email_reply_to',
            'reply_to_name' => 'Threads Team'
        ]
    ]
];

$ldap_cfg = [
    "host"          => "ldap://192.168.0.1",
    "bind_dn"       => "...",
    "bind_password" => "...",
];

$payment_cfg = [
    'webdev' => [
        'url'   => '...',
        'salt'  => 'some-very-random-string'
    ],
    'ttt' => [
        'gateway_url'   => '...',
        'salt'  => 'some-very-random-string',
        'nick_field' => 'some-field',
        'api_url' => '...',
        'api_headers' => []
    ]
];

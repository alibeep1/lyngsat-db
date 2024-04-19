import create from 'zustand';

export interface IUser {
    Email: string,
    // Username: string | null, 
    // Gender: string | null,
    // Birthdate: string | null,
    Location: string,
    Region: string,
    Longitude: string
}

export interface IQueryOne {
    longitude: string,
}

export interface IQueryTwo {
    email: string,
}
export interface IQuerySeven {
    language: string,
    satellite: string,
    vidEncoding: string,
    region: string,
}

export interface IFavChannel {
    email: string,
    channel: string,
    satellite: string,
    frequency: string
}

type UserStore = IUser & {
    updateUser: (user: IUser) => void;
};

export const useUserStore = create<UserStore>(set => ({
    Email: 'empty',
    Location: 'empty',
    Region: 'empty',
    Longitude: 'empty',
    updateUser: (user) => set({ ...user }),

}));

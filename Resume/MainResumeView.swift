//
//  ContentView.swift
//  Resume
//
//  Created by Theppitak M. on 27.04.2024.
//

import SwiftUI

struct MainResumeView: View {
        
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                
                // Header
                VStack {
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 20) {
                        Image("profilePic")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        Spacer()
                        VStack(alignment: .trailing, spacing: 5) {
                            TextSize.headlineText("Theppitak\nManeepong")
                                .foregroundStyle(colorScheme == .dark ? Color.randomLight : Color.randomDark)
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 180, height: 1)
                            TextSize.subHeadlineText("A newcomer at the crossroad\n of tech and creativity.")
                        }
                        .multilineTextAlignment(.trailing)
                    }
                    .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                    
                    // Intro
                    TextSize.captionText("Former creative copywriter and project manager, now on my way to becoming a developer. On the right side of my brain lies the love of fun and goofy ways to communicate things, while on the left is the love to find ways to manage unmanageable problems into the perfect march.")
                        .padding(EdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 25))
                }
        
                // Work
                VStack(alignment: .center) {
                    SectionView(sectionText: "👨🏻‍💻 Work Experiences")
                        .foregroundStyle(colorScheme == .dark ? Color.randomLight : Color.randomDark)
                    PositionView(company: "Self-employed", position: "Creative Copywriter", duration: "2023 - Present", url: nil)
                    PositionView(company: "Glow Creative", position: "Project Manager and Operation Management", duration: "2018 - 2022", url: "https://glowyourstory.com")
                    PositionView(company: "The 101 Percent", position: "Content Creator", duration: "2017 - 2018", url: "https://www.the101.world/author/theppitak/")
                    PositionView(company: "daypoets", position: "Editorial Writer", duration: "2015 - 2016", url: "https://adaymagazine.com/author/author18/")
                }
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 15))
                
                // Educations
                VStack(alignment: .center) {
                    SectionView(sectionText: "📚 Educations")
                        .foregroundStyle(colorScheme == .dark ? Color.randomLight : Color.randomDark)
                    PositionView(company: "Junior Software Developer Bootcamp", position: "Generation Thailand", duration: "Nov 2023 - Feb 2024", url: nil)
                    PositionView(company: "B.A. Communication Arts\nJournalism", position: "Chulalongkorn University", duration: "2011 - 2015", url: nil)
                }
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 15))
                
                // Skills
                VStack(alignment: .center) {
                    SectionView(sectionText: "⚒️ Skills")
                    ScrollView(.horizontal, showsIndicators: false) {
                        VStack {
                            HStack {
                                CapsuleTextView(skillText: "Swift")
                                CapsuleTextView(skillText: "SwiftUI")
                                CapsuleTextView(skillText: "UIKit")
                                CapsuleTextView(skillText: "React")
                                CapsuleTextView(skillText: "TailwindCSS")
                                CapsuleTextView(skillText: "Node.js")
                                CapsuleTextView(skillText: "JavaScript")
                            }
                            HStack {
                                CapsuleTextView(skillText: "Express")
                                CapsuleTextView(skillText: "MongoDB")
                                CapsuleTextView(skillText: "SQLite")
                                CapsuleTextView(skillText: "Next.js")
                                CapsuleTextView(skillText: "Git")
                                CapsuleTextView(skillText: "Figma")
                                CapsuleTextView(skillText: "UX Writing")
                            }
                        }
                        .padding()
                    }
                    .padding()
                }
                
                // Contacts
                VStack(alignment: .center) {
                    SectionView(sectionText: "☎️ Contact")
                        .foregroundStyle(colorScheme == .dark ? Color.randomLight : Color.randomDark)
                    VStack {
                        ContactsView(platformName: "GitHub", placeholder: "mmmmmob", url: "https://github.com/mmmmmob")
                        ContactsView(platformName: "Website", placeholder: "theppitak.me", url: "https://theppitak.me")
                        ContactsView(platformName: "LinkedIn", placeholder: "Theppitak M.", url: "https://linkedin.com/in/theppitak-m")
                        ContactsView(platformName: "Email", placeholder: "theppitak.m@outlook.com", url: "mailto:theppitak.m@outlook.com")
                    }
                    .padding()
                }
                .padding()
                Spacer()
                
                // Footer
                TextSize.footerText("© 2024 Theppitak M.")
            }
        }
        .padding(.top, 1)
    }
}
#Preview {
    MainResumeView()
}

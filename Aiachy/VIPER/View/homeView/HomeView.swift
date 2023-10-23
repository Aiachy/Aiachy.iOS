//
//  HomeView.swift
//  Aiachy
//
//  Created by Mert Türedü on 19.05.2023.
//

import SwiftUI
//MARK: HomeView - View
struct HomeView: View {
    
    @StateObject var presenter: HomePresenter
    var aiachyState: AiachyState
    var router: HomeRouterPresenter
    
    init(aiachyState: AiachyState,
         router: HomeRouterPresenter) {
        self._presenter = StateObject(wrappedValue: HomePresenter(aiachyState: aiachyState,
                                                                  router: router))
        self.aiachyState = aiachyState
        self.router = router
    }

    @State var isHave: Int = 0
    
    var body: some View {
        ZStack {
            HomeBackground()
            Image(ImageHandler.makeHomeString(aiachyState, home: .homeBackground))
                .resizable()
                .scaledToFit()
                .opacity(0.2)
            VStack{
                //MARK: HomeView - topImage
                topImage
                //MARK: HomeView - dateSections
                dateSections
                //MARK : HomeView -  horoscopeComment
                horoscopeComment
                //MARK: HomeView -  ascendiantComment
                checkedAscendiantComment
                //MARK: HomeView - chakraStatusContent
                chakraStatusContent
                Spacer()
            }
            .modifier(makeIgnoresSafeArea(isWillBeIgnoring: aiachyState.isAiachyReady))
        }
        .environmentObject(aiachyState)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(aiachyState: ACY_PREVIEWS_STATE, router: HomeRouterPresenter())
    }
}

extension HomeView {
    @ViewBuilder
    //MARK: HomeView - topImage
    private var topImage: some View {
        if aiachyState.isAiachyReady {
            ACYHomeImage(currentTime: $presenter.currentTime,
                         compatibilityEntity: presenter.compatibilityEntity )
        }
    }
    //MARK: HomeView - dateSections
    private var dateSections: some View {
        LazyVStack(alignment: .leading) {
            HStack(spacing: 0)  {
                DateSection(selectedCurrentTime: $presenter.currentTime, 
                            isOracled: true,
                            currentTime: .yesterday) { presenter.getZodiacEntityWithDay() }
                DateSection(selectedCurrentTime: $presenter.currentTime,
                            isOracled: true,
                            currentTime: .today) { presenter.getZodiacEntityWithDay() }
                DateSection(selectedCurrentTime: $presenter.currentTime,
                            isOracled: aiachyState.user.userOracle.wrappedIsOracled,
                            currentTime: .tomorrow) { presenter.getZodiacEntityWithDay() }
            }
            .padding(.horizontal)
            
        }
    }
    //MARK : HomeView -  horoscopeComment
    private var horoscopeComment: some View {
        VStack {
            Text(TextHandler.makeHomeString(aiachy: aiachyState, home: .aiachy) + " " + TextHandler.makeHomeDateString(aiachy: aiachyState, date: presenter.currentTime))
                .font(FontHandler.aiachyFont(.cinzelBlack12))
            Text(presenter.comment)
                .font(FontHandler.aiachyFont(.oldBold12))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding(.vertical)
        .foregroundStyle(Color(ColorHandler.makeAiachyColor(aiachyState,
                                                            aiachyColor: .fifthColor)))
    }
    @ViewBuilder
    var checkedAscendiantComment: some View {
        if presenter.checkGuestControl() {
            
        } else {
            ascendiantComment
        }
    }
    
    var ascendiantComment: some View {
        VStack(spacing: 5) {
                Text(presenter.ascendiantComment)
                    .font(FontHandler.aiachyFont(.oldItalic10))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
        }
        .foregroundStyle(Color(ColorHandler.makeAiachyColor(aiachyState,
                                                            aiachyColor: .backgroundColor)))
        .frame(width: ACYdw(aiachyState, d: 0.9))
        .background{
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color(ColorHandler.makeAiachyColor(aiachyState,
                                                                    aiachyColor: .fourthColor)))
                .frame(width: ACYdw(aiachyState, d: 0.9))
                .padding(.vertical,-5)
        }
        .overlay{ makeCrystalImageWithZodiacInt(aiachy: aiachyState,
                                         crystal: aiachyState.user.userSpiritual.ascendant!)
        .resizable()
        .scaledToFit()
        .opacity(0.15)
        }
    }
    
    var chakraStatusContent: some View {
        ACYChakraStatus(isOracled: $presenter.isOracled,
                       currentIndex: $presenter.statusCurrentIndex,
                      entity: presenter.chakraStatusEntities)
    }
}

fileprivate struct makeIgnoresSafeArea: ViewModifier {
    
    var isWillBeIgnoring: Bool
    
    func body(content: Content) -> some View {
        if isWillBeIgnoring {
            content
                .ignoresSafeArea()
        }else {
            content
        }
        
    }
    
}

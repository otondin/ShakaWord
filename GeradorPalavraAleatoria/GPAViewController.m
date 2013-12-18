//
//  GPAViewController.m
//  GeradorPalavraAleatoria
//
//  Created by Gabriel Tondin on 17/12/13.
//  Copyright (c) 2013 otondin. All rights reserved.
//

#import "GPAViewController.h"
#import "Lexicontext.h"

@interface GPAViewController ()

@property (weak, nonatomic) IBOutlet UITextField *silabas;
@property (weak, nonatomic) IBOutlet UIButton *gerarPalavra;
@property (weak, nonatomic) IBOutlet UILabel *palavraAleatoria;
@property (weak, nonatomic) IBOutlet UIStepper *numSilabas;

@end

@implementation GPAViewController

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (event.subtype == UIEventSubtypeMotionShake)
    {
       
        NSArray *palavras1 = @[@"Hulk", @"Oi", @"Tchau", @"Foo", @"Bar"];
        NSArray *palavras2 = @[@"Jiban", @"Batman", @"Copa", @"Maçã", @"Mundo"];
        NSArray *palavras3 = @[@"Jaspion", @"Turista", @"", @"Código", @"Cadeira"];
        
        if ([self.silabas.text isEqualToString:@""])
            self.palavraAleatoria.text = @"Informe o número de sílabas entre 1 e 3!";
        if ([self.silabas.text isEqualToString:@"1"])
            self.palavraAleatoria.text = [palavras1 objectAtIndex:rand() % 5];
        if ([self.silabas.text isEqualToString:@"2"])
            self.palavraAleatoria.text = [palavras2 objectAtIndex:rand() % 5];
        if ([self.silabas.text isEqualToString:@"3"])
            self.palavraAleatoria.text = [palavras3 objectAtIndex:rand() % 5];
        
        int validarSilabas = [self.silabas.text intValue] ;
        if (validarSilabas > 3)
            self.palavraAleatoria.text = @"Atenção, você deve informar o número de sílabas entre 1 e 3!";
        
        [self.palavraAleatoria setHidden:NO];
        [self.view endEditing:YES];
    }
    
    if ([super respondsToSelector:@selector(motionEnded:withEvent:)])
        [super motionEnded:motion withEvent:event];
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (IBAction)gerarPalavraAleatoria:(UIButton *)sender {
    
    NSArray *palavras1 = @[@"Olá", @"Oi", @"Tchau", @"Foo", @"Bar"];
    NSArray *palavras2 = @[@"Mesa", @"Aula", @"Copa", @"Maçã", @"Mundo"];
    NSArray *palavras3 = @[@"Calorão", @"Turista", @"Programar", @"Código", @"Cadeira"];
    
    if ([self.silabas.text isEqualToString:@""])
        self.palavraAleatoria.text = @"Informe o número de sílabas entre 1 e 3!";
    if ([self.silabas.text isEqualToString:@"1"])
        self.palavraAleatoria.text = [palavras1 objectAtIndex:rand() % 5];
    if ([self.silabas.text isEqualToString:@"2"])
        self.palavraAleatoria.text = [palavras2 objectAtIndex:rand() % 5];
    if ([self.silabas.text isEqualToString:@"3"])
        self.palavraAleatoria.text = [palavras3 objectAtIndex:rand() % 5];
    
    int validarSilabas = [self.silabas.text intValue] ;
    if (validarSilabas > 3)
        self.palavraAleatoria.text = @"Atenção, você deve informar o número de sílabas entre 1 e 3!";
    
    [self.palavraAleatoria setHidden:NO];
    [self.view endEditing:YES];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.palavraAleatoria setHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
